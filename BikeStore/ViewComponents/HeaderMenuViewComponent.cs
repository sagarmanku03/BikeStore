using BikeStore.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BikeStore.ViewComponents
{
    public class HeaderMenuViewComponent : ViewComponent
    {
		private readonly IHeaderMenuAccessService _menuAccessService;

		public HeaderMenuViewComponent(IHeaderMenuAccessService menuAccessService)
		{
			_menuAccessService = menuAccessService;
		}

		public async Task<IViewComponentResult> InvokeAsync()
		{
			var items = await _menuAccessService.GetHeaderMenu();

			return View(items);
		}
	}
}
