%%�ú����жϸ���ͼ���Ƿ��л�
function re=ownRing(m, A)
    while 1
        pre_A=A;
        for i = 1:m
            degree = 0;%��i��Ԫ�صĶ�
            for j = 1:m
                if A(i,j) ~= 0
                    degree = degree + 1;
                end
            end
            if degree == 1%Ԫ�صĶ�Ϊ1ʱɾ�����Ԫ�أ�������Ԫ�ضȼ�һ
               A(i,:) = 0;
               A(:,i) = 0;
            end
        end
        if pre_A==A%ͼ��û�ж�Ϊ1��Ԫ�����˳�
           break; 
        end
    end
    
    if sum(A(:)) == 0
        re = 0;
    else
        re = 1;
    end
end