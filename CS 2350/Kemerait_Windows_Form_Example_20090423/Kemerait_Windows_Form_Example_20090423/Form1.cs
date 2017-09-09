using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Kemerait_Windows_Form_Example_20090423
{
    public partial class Form1 : Form
    {
        int stepsforwards = 0;
        int stepsbackwards = 0;
        int counter = 0;

        public Form1()
        {
            InitializeComponent();
        }

        private void Forward_Click(object sender, EventArgs e)
        {
            stepsforwards++;
            DisplayProgress();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //everything in this body executes when the frame is loaded
        }

        private void Backward_Click(object sender, EventArgs e)
        {
            stepsbackwards++;
            DisplayProgress();
        }

        private void DisplayProgress()
        {
            Display.Text = stepsforwards + " steps forward.\n";
            Display.Text += stepsbackwards + " steps backward.\n";

            counter = stepsforwards - stepsbackwards;

            if (counter > 0)
            {
                Display.Text += "You are " + counter + " steps forward from where you started.\n";
            }
            else if (counter < 0)
            {
                Display.Text += "You are " + Math.Abs(counter) + " steps backward from where you started.\n";
            }
            else
            {
                Display.Text += "You have made no progress in either direction.\n";
            }

            Display.Text += "You have made " + (stepsforwards + stepsbackwards) + " steps overall.\n";
            
        }

        

        

       

       

        

       

       
        
    }
}
