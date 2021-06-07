using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using NEGOCIO;
using System.Web.UI.WebControls;

namespace SistemaElectronico
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblStatus.Visible = false;
        }
        private void BuscarInflacao()
        {

            this.GVVerDados.DataSource = B_INFLACAO.BuscarInflacao(this.TxtProcurar.Text);
            this.GVVerDados.DataBind();

            //LblStatus.Visible = true;
            //LblStatus.Text = Convert.ToString(GVVerDados.Rows.Count);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            this.BuscarInflacao();
        }
    }
}