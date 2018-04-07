#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;

//방법1(단순 array)
/*int n;//정점의 총 갯수
int map[30][30], visit[30];//인접행렬과 방문여부를 나타내는 배열

void DFS(int v) {
	int i;

	visit[v] = 1; //정점v를 방문했다고 표시
	for (i = 1; i <= n; i++)
	{
		//정점 v와 정점 i가 연결되었고(길이 있고), 정점 i를 방문하지 않았다면
		if (map[v][i] == 1 && !visit[i]) {
			printf("%d에서 %d로 이동\n", v, i);
			//정점 i에서 다시 DFS를 시작한다.
			DFS(i); //그 길을 가본다.
		}
	}
}

int main() {
	int start;//시작정점
	int v1, v2;

	scanf_s("%d%d", &n, &start);

	while (1)
	{
		scanf_s("%d%d", &v1, &v2);
		if (v1 == -1 && v2 == -1) break; // -1과 -1이 입력되면 무한루프 탈출
		map[v1][v2] = map[v2][v1] = 1; //정점 v1과 정점 v2가 연결되었다고 표시
	}
	DFS(start);//DFS시작!
	return 0;
}*/

//방법2(vector)

vector<vector<int>> adj;
vector<bool> visited;

void dfs(int here) {
	cout << "DFS visits" << here << endl;
	visited[here] = true;

	for (int i = 0; i < adj[here].size(); ++i) {
		int there = adj[here][i];
		if (!visited[there])
			dfs(there);
	}
}

void dfsAll(){
	visited = vector<bool>(adj.size(), false);

	for (int i = 0; i < adj.size(); ++i)
		if (!visited[i])
			dfs(i);
}


