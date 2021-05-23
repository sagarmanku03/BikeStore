using BikeStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.Services
{
    public interface IHeaderMenuAccessService
    {
        Task<List<ItemCategory>> GetHeaderMenu();
    }
}
