using System;
using System.Collections.Generic;
using System.Text;

namespace Backend.Models
{
    public enum OrderStatus
    {
        /// <summary>
        /// 待提交
        /// </summary>        
        WAIT_SUBMIT = 1,

        /// <summary>
        /// 待审核
        /// </summary>
        WAIT_AUDIT = 2,

        /// <summary>
        /// 已扣货
        /// </summary>
        DETAINED = 3,
        
        /// <summary>
        /// 待检验
        /// </summary>
        WAIT_CHECK = 4,

        /// <summary>
        /// 已完毕
        /// </summary>
        FINISHED = 5,

        /// <summary>
        /// 已取消
        /// </summary>
        CANCELED = 6
    }
}
