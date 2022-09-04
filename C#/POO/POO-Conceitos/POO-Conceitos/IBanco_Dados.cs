using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POO_Conceitos
{
    interface IBanco_Dados<T>
    {
        // operações de CRUD
        // C = Create
        // R = Read
        // U = Update
        // D = Delete

        bool Create(T obj);

        List<T> Read();

        bool Update(T obj);

        bool Delete(int id);
    }
}
