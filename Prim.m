%%Prim�㷨
function B = Prim(m, A)
A(A==0) = Inf;%�ڵ㲻�ɴ���ȨֵΪInf
P = zeros(1, m);%�洢�ڵ�
P(1,1) = 1;%�������Ϊ1�����Ͼ�
V = 1:m;
V_P = V - P;
link = zeros(m-1,2);%�洢��С�������ı�
k = 1;
while k < m
   p = P(P~=0);
   v = V_P(V_P~=0);
   pv = min(min(A(p,v)));%ѡ��Ȩ����С��һ���ߣ�Ȩֵ��
   [x, y] = find(A==pv);%Ȩֵ��С���ڽӾ����������
   for i=1:length(x)
       if  any(P==x(i)) && any(V_P==y(i))%�ҳ��Ѽ���P�Ľڵ��δ����p����һ���ڵ�
           P(1,y(i)) = y(i);%����һ���ڵ����P
           V_P = V - P;
           link(k, :) = [x(i), y(i)];
           k = k+1;
           break;
       end
   end
end
B = zeros(m, m);
for i = 1 : m-1
    B(link(i,1),link(i,2)) = A(link(i,1),link(i,2));
    B(link(i,2),link(i,1)) = A(link(i,2),link(i,1));
end
end