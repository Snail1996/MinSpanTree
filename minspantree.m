%-------------------------------------------------------------------------------
%%��������ʡ�м����磬�ڵ�Ϊ���У���Ϊ����·���ɴ��ԡ���Ȩ��Ϊ���루��λ�����
%%������СȨ����������������ƽ���ʡ���Ÿ������ͼ��
%%ע������Ϊ��Prim�����ߡ�Kruskal'����������������Ч
%-------------------------------------------------------------------------------
%1�����Ͼ���2�������ݣ�3�������ݣ�4�����򽭣�5�������ݣ�6��������
%7�������ݣ�8������Ǩ��9����������10����̩�ݣ�11������ͨ��12�������Ƹۣ�13�����γ�
%-------------------------------------------------------------------------------
%���ɳ��нڵ��ڽӾ���
A = zeros(13);
A(1,[2 3 4 5]) = [327.2 98.8 84.4 128.7];
A(2,[8 12]) = [112.3 205.5];
A(3, [4 9 10]) = [36.0 160.5 72.6];
A(4, 5) = 80.4;
A(5, 6) = 62.8;
A(6, [7 10]) = [42.1 131.4];
A(7, 11) = 103.9;
A(8, 9) = 109.3;
A(9, [12 13]) = [128.9 116.7];
A(10, [11 13]) = [125.8 123.7];
A(11, 13) = 187.3;
A(12, 13) = 193.7;
G = A+A';
%-------------------------------------------------------------------------------
ALGORITHM  = input('������Prim�㷨��������"Prim";������Kruskal�㷨��������"Kruskal":\n');
switch(ALGORITHM)
    case 'Prim'
        %Prim�㷨
        A = Prim(13, G)
        
    case 'Kruskal'
        %Kruskal�㷨
        A = Kruskal(13, G)
    otherwise
        fprintf('�����������');
end

