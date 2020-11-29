using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;

namespace ExportPDF2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopualData();
            }
        }
        private void PopualData()
        {
            using (AccessDataSource dc = new AccessDataSource())
            {
                var v = dc.NameDatas.OrderBy(a => a.Adress).ThenBy(a => a.Bill).ThenBy(a => Date).ThenBy(a => Branch).ThenBy(a => agent).ToList();
                gvData.DataSoure = v;
                gvData.DataBind();
            }
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {

        }
    }
}