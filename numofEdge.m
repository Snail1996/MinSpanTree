%%�ú��������������ͱߵ�Ȩ����Ԫ��
function [k, E] = numofEdge(m, G)
E=[];
k=0;%�ߵ�����
for i=1:m
    for j=i:m
        if G(i,j)~=0
            E(k+1,:) = [G(i,j) i j];%��ȡ�ߣ���Ԫ��洢
            k=k+1;
        end
    end
end
end