
//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Diagnostics;

namespace MWebAsk.Models
{
    /// <summary>
    /// The class representing the dbo.Publish table.
    /// </summary>
    [Table(Name="dbo.Publish")]
    public partial class Publish
        : MWebAskEntity
    {
        
        #region Default Constructor
        /// <summary>
        /// Initializes a new instance of the <see cref="Publish"/> class.
        /// </summary>
        [DebuggerNonUserCodeAttribute()]
        public Publish()
        {
            OnCreated();
            _userAccount = default(EntityRef<Account>);
        }
        #endregion
        
        #region Column Mapped Properties
        
        private long _iD = default(long);

        /// <summary>
        /// Gets the ID column value.
        /// </summary>
        [Column(Name="ID", Storage="_iD", DbType="bigint NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true, CanBeNull=false)]
        public long ID
        {
            get { return _iD; }
            set
            {
                if (_iD != value)
                {
                    OnIDChanging(value);
                    OnPropertyChanging("ID");
                    _iD = value;
                    OnPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        
        private string _title;

        /// <summary>
        /// Gets or sets the Title column value.
        /// </summary>
        [Column(Name="Title", Storage="_title", DbType="nvarchar(50) NOT NULL", CanBeNull=false)]
        public string Title
        {
            get { return _title; }
            set
            {
                if (_title != value)
                {
                    OnTitleChanging(value);
                    OnPropertyChanging("Title");
                    _title = value;
                    OnPropertyChanged("Title");
                    OnTitleChanged();
                }
            }
        }
        
        private string _body;

        /// <summary>
        /// Gets or sets the Body column value.
        /// </summary>
        [Column(Name="Body", Storage="_body", DbType="ntext NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
        public string Body
        {
            get { return _body; }
            set
            {
                if (_body != value)
                {
                    OnBodyChanging(value);
                    OnPropertyChanging("Body");
                    _body = value;
                    OnPropertyChanged("Body");
                    OnBodyChanged();
                }
            }
        }
        
        private System.DateTime _addtime;

        /// <summary>
        /// Gets or sets the Addtime column value.
        /// </summary>
        [Column(Name="Addtime", Storage="_addtime", DbType="smalldatetime NOT NULL", CanBeNull=false)]
        public System.DateTime Addtime
        {
            get { return _addtime; }
            set
            {
                if (_addtime != value)
                {
                    OnAddtimeChanging(value);
                    OnPropertyChanging("Addtime");
                    _addtime = value;
                    OnPropertyChanged("Addtime");
                    OnAddtimeChanged();
                }
            }
        }
        
        private long _userID;

        /// <summary>
        /// Gets or sets the UserID column value.
        /// </summary>
        [Column(Name="UserID", Storage="_userID", DbType="bigint NOT NULL", CanBeNull=false)]
        public long UserID
        {
            get { return _userID; }
            set
            {
                if (_userID != value)
                {
                    if (_userAccount.HasLoadedOrAssignedValue)
                    {
                        throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
                    }
                    OnUserIDChanging(value);
                    OnPropertyChanging("UserID");
                    _userID = value;
                    OnPropertyChanged("UserID");
                    OnUserIDChanged();
                }
            }
        }
        #endregion
        
        #region Association Mapped Properties
        
        private EntityRef<Account> _userAccount;

        /// <summary>
        /// Gets or sets the Account association.
        /// </summary>
        [Association(Name="FK_Publish_Account", Storage="_userAccount", ThisKey="UserID", OtherKey="ID", IsForeignKey=true)]
        public Account UserAccount
        {
            get { return _userAccount.Entity; }
            set
            {
                Account previousValue = _userAccount.Entity;
                if (previousValue != value || _userAccount.HasLoadedOrAssignedValue == false)
                {
                    OnPropertyChanging("UserAccount");
                    if (previousValue != null)
                    {
                        _userAccount.Entity = null;
                        previousValue.UserPublishList.Remove(this);
                    }
                    _userAccount.Entity = value;
                    if (value != null)
                    {
                        value.UserPublishList.Add(this);
                        _userID = value.ID;
                    }
                    else
                    {
                        _userID = default(long);
                    }
                    OnPropertyChanged("UserAccount");
                }
            }
        }
        #endregion
        
        #region Extensibility Method Definitions
        /// <summary>Called when this instance is loaded.</summary>
        partial void OnLoaded();
        /// <summary>Called when this instance is being saved.</summary>
        partial void OnValidate(ChangeAction action);
        /// <summary>Called when this instance is created.</summary>
        partial void OnCreated();
        /// <summary>Called when ID is changing.</summary>
        /// <param name="value">The new value.</param>
        partial void OnIDChanging(long value);
        /// <summary>Called after ID has Changed.</summary>
        partial void OnIDChanged();
        /// <summary>Called when Title is changing.</summary>
        /// <param name="value">The new value.</param>
        partial void OnTitleChanging(string value);
        /// <summary>Called after Title has Changed.</summary>
        partial void OnTitleChanged();
        /// <summary>Called when Body is changing.</summary>
        /// <param name="value">The new value.</param>
        partial void OnBodyChanging(string value);
        /// <summary>Called after Body has Changed.</summary>
        partial void OnBodyChanged();
        /// <summary>Called when Addtime is changing.</summary>
        /// <param name="value">The new value.</param>
        partial void OnAddtimeChanging(System.DateTime value);
        /// <summary>Called after Addtime has Changed.</summary>
        partial void OnAddtimeChanged();
        /// <summary>Called when UserID is changing.</summary>
        /// <param name="value">The new value.</param>
        partial void OnUserIDChanging(long value);
        /// <summary>Called after UserID has Changed.</summary>
        partial void OnUserIDChanged();
        #endregion
        
    }
}

