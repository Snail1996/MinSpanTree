%%�ú������ߵ�Ȩ������С����ǰ��
function E = sortofEdge(k, E)
for i = k:-1:1
    for j = 1:i-1
        if E(j,1) > E(j+1,1)
            tmp = E(j,:);
            E(j,:) = E(j+1,:);
            E(j+1,:) = tmp;
        end
    end
end