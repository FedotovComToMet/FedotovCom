//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Students
{
    using System;
    using System.Collections.Generic;
    
    public partial class Studying
    {
        public string NamberStudent { get; set; }
        public Nullable<int> NumberGroup { get; set; }
        public Nullable<int> Year { get; set; }
        public Nullable<System.DateTime> Admission { get; set; }
        public Nullable<System.DateTime> Allocation { get; set; }
    
        public virtual Group Group { get; set; }
        public virtual Student Student { get; set; }
    }
}
