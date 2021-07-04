using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace ShoppingCartExample
{
    /// <summary>
    /// Summary description for ShoppingCart
    /// </summary>
    [Serializable] 
    public class CartItem
    {
        private int _productID;
        private string _productName;
        private string _imageUrl;
        private int _quantity;
        private double _price;
        private double _subTotal;

        public CartItem()
        { 
        }
        public CartItem(int ProductID, string ProductName, string ImageUrl, int Quantity, double Price)
        {
            _productID = ProductID;
            _productName = ProductName;
            _imageUrl = ImageUrl;
            _quantity = Quantity;
            _price = Price;
            _subTotal = Quantity * Price;

        }
        public int ProductID
        {
            get
            {
                return _productID;
            }
            set
            {
                _productID = value;
            }
        }

         public string ProductName
         {
            get { return _productName; }
            set { _productName = value; }
         }

         public string ImageUrl
         {
             get { return _imageUrl; }
             set { _imageUrl = value; }
         }

         public int Quantity
         {
             get { return _quantity; }
             set { _quantity = value; }
         }

         public double Price
         {
             get { return _price; }
             set { _price = value; }
         }

         public double SubTotal
         {
             get { return _quantity * _price; }
            
         }
     
    }
    [Serializable]
    public class Cart
    {
        private DateTime _dateCreated;
        private DateTime _lastUpdate;
        private List<CartItem> _items;

        public Cart()
        {
            if (this._items == null)
            {
                this._items = new List<CartItem>();
                this._dateCreated = DateTime.Now;
            }
        }

        public List<CartItem> Items
        {
 		get { return _items;}
		set { _items = value;}
	    }

        public void Insert(int ProductID, double Price, int Quantity, string ProductName, string ImageUrl)
        {
            int ItemIndex = ItemIndexOfID(ProductID);
            if (ItemIndex == -1)
            {
                CartItem NewItem = new CartItem();
                NewItem.ProductID = ProductID;
                NewItem.Quantity = Quantity;
                NewItem.Price = Price;
                NewItem.ProductName = ProductName;
                NewItem.ImageUrl = ImageUrl;
                _items.Add(NewItem);
            }
            else
            {
                _items[ItemIndex].Quantity += 1;
            }
            _lastUpdate = DateTime.Now;
        }

        public void Update(int RowID, int ProductID, int Quantity, double Price)
        {
            CartItem Item = _items[RowID];
            Item.ProductID = ProductID;
            Item.Quantity = Quantity;
            Item.Price = Price;
            _lastUpdate = DateTime.Now;
        }

        public void DeleteItem(int rowID)
        {
            _items.RemoveAt(rowID);
            _lastUpdate = DateTime.Now;
        }

        private int ItemIndexOfID(int ProductID)
        {
            int index = 0;
            foreach (CartItem item in _items)
            {
                if (item.ProductID == ProductID)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }

        public double Total
        {
            get
            {
                double t = 0;
                if (_items == null)
                {
                    return 0;
                }
                foreach (CartItem Item in _items)
                {
                    t += Item.SubTotal;
                }
                return t;
            }
        }
 
    }
}
