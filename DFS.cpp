#include <cstdio>
#include <vector>
#include <iostream>
using namespace std;

//���1(�ܼ� array)
/*int n;//������ �� ����
int map[30][30], visit[30];//������İ� �湮���θ� ��Ÿ���� �迭

void DFS(int v) {
	int i;

	visit[v] = 1; //����v�� �湮�ߴٰ� ǥ��
	for (i = 1; i <= n; i++)
	{
		//���� v�� ���� i�� ����Ǿ���(���� �ְ�), ���� i�� �湮���� �ʾҴٸ�
		if (map[v][i] == 1 && !visit[i]) {
			printf("%d���� %d�� �̵�\n", v, i);
			//���� i���� �ٽ� DFS�� �����Ѵ�.
			DFS(i); //�� ���� ������.
		}
	}
}

int main() {
	int start;//��������
	int v1, v2;

	scanf_s("%d%d", &n, &start);

	while (1)
	{
		scanf_s("%d%d", &v1, &v2);
		if (v1 == -1 && v2 == -1) break; // -1�� -1�� �ԷµǸ� ���ѷ��� Ż��
		map[v1][v2] = map[v2][v1] = 1; //���� v1�� ���� v2�� ����Ǿ��ٰ� ǥ��
	}
	DFS(start);//DFS����!
	return 0;
}*/

//���2(vector)

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


