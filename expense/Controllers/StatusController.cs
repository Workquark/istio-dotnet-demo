using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
//using expense.Models;

namespace expense.Controllers {
    [Route ("[controller]")]
    [ApiController]
    public class StatusController : ControllerBase {
        public StatusController () { }

        [HttpGet]
        public ActionResult<IEnumerable<string>> Get () {
            return Ok ();
        }

        [HttpGet ("healthz")]
        public IActionResult healthz () {
            return Ok ("alive and kicking");
        }
    }
}