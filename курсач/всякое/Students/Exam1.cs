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
    
    public partial class Exam1
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Exam1()
        {
            this.TS = new HashSet<TS>();
        }
    
        public string NamberStudent { get; set; }
        public int idExam { get; set; }
        public Nullable<int> idSubgect { get; set; }
        public string Semester { get; set; }
        public Nullable<double> Access { get; set; }
        public Nullable<float> Estimation { get; set; }
        public Nullable<System.DateTime> DateDelivery { get; set; }
    
        public virtual Student Student { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TS> TS { get; set; }
    }
}
