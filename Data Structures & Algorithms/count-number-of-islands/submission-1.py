class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        rows = len(grid)
        cols = len(grid[0])
        visited = set()
        count = 0

        def dfs(i, j):
            if (i < 0 or i >= rows or
                j < 0 or j >= cols):
                return

            if grid[i][j] == "0" or (i, j) in visited:
                return

            visited.add((i, j))

            dfs(i + 1, j)  # Down
            dfs(i - 1, j)  # Up
            dfs(i, j + 1)  # Right
            dfs(i, j - 1)  # Left

        for i in range(rows):
            for j in range(cols):
                if grid[i][j] == "1" and (i, j) not in visited:
                    count += 1
                    dfs(i, j)

        return count

        