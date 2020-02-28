#include <libc.h>

typedef struct	s_board
{
	char *board;
	int height;
	int width;
}				t_board;

typedef struct	s_rekt
{
	char c;
	float x;
	float y;
	float width;
	float height;
	char color;
}				t_rekt;

void print_info(t_board *zone)
{
	int i;
	int j;

	i = 0;
	while (i < zone->height)
	{
		j = 0;
		while (j < zone->width)
		{
			write(1, &zone->board[i * zone->width + j], 1);
			j++;
		}
		write(1, "\n", 1);
		i++;
	}
}

int		get_resolution(FILE *file, t_board *board)
{
	char c;

	if (fscanf(file, "%d %d %c\n", &board->width, &board->height, &c) == 3)
	{
		if ((board->width < 1 || board->width > 300) || (board->height < 1 || board->height > 300))
			return (0);
		board->board = malloc(sizeof(char) * (board->height * board->width + 1));
		board->board = memset(board->board, c, board->height * board->width);
	}
	else
		return (0);
	return (1);
}

int is_in_rectangle(float x, float y, struct s_rekt *rekt)
{
	if (x < rekt->x || x > rekt->x + rekt->width || y < rekt->y || y > rekt->y + rekt->width)
		return (0);
	if ((x - rekt->x < 1 || rekt->x + rekt->width - x < 1 ||
		y - rekt->y < 1 || rekt->y + rekt->height - y < 1) && rekt->c == 'r')
		return (2);
	if (rekt->c == 'R')
		return (1);
	return (0);
}

int fill_rekt(t_rekt *rect, t_board *drawing)
{
	int j;
	int i;

	if (rect->width <= 0 || rect->height <= 0 || (rect->c != 'R' && rect->c != 'r'))
		return (0);
	i = 0;
	while (i < drawing->width)
	{
		j = 0;
		while (j < drawing->height)
		{
			if (is_in_rectangle(i, j, rect))
				drawing->board[i + j * drawing->width] = rect->color;
			j++;
		}
		i++;
	}
	return (1);
}

int		parse(FILE *file)
{
	t_board board;
	t_rekt rekt;
	int scan_ret;
	char c;

	if (get_resolution(file, &board))
	{
		scan_ret = fscanf(file,"%c %f %f %f %f %c\n", &rekt.c, &rekt.x, &rekt.y, &rekt.width, &rekt.height, &rekt.color);
		while (scan_ret == 6)
		{
			if (fill_rekt(&rekt, &board) == 0)
				return (0);
			scan_ret = fscanf(file,"%c %f %f %f %f %c\n", &rekt.c, &rekt.x, &rekt.y, &rekt.width, &rekt.height, &rekt.color);
		}
	}
	else
		return (0);
	print_info(&board);
	return (1);
}

int main(int argc, char **argv)
{
	int i;
	FILE *file;
	if (argc == 2)
	{
		file = fopen(argv[1], "r");
		if (parse(file) == 0)
		{
			write(1, "Error: argument\n", 16);
			return (1);
		}
		return (0);
	}
	else
		write(1, "Error: argument\n", 16);
	return (1);
}