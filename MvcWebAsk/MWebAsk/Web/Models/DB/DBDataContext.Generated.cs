
//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a CodeSmith Template.
//
//     DO NOT MODIFY contents of this file. Changes to this
//     file will be lost if the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Diagnostics;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;

namespace MWebAsk.Models
{
    /// <summary>
    /// The DataContext class for the WebAsk database.
    /// </summary>
    public partial class DBDataContext : DataContext
    {
        private static MappingSource mappingCache = new AttributeMappingSource();
        
        #region Constructors
        /// <summary>
        /// Initializes the <see cref="DBDataContext"/> class.
        /// </summary>
        [DebuggerNonUserCodeAttribute]
        static DBDataContext()
        { }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="DBDataContext"/> class.
        /// </summary>
        [DebuggerNonUserCodeAttribute]
        public DBDataContext()
            : base("Data Source=.;Initial Catalog=WebAsk;Integrated Security=True", mappingCache)
        {
            OnCreated();
        }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="DBDataContext"/> class.
        /// </summary>
        /// <param name="connection">The connection string.</param>
        [DebuggerNonUserCodeAttribute]
        public DBDataContext(string connection)
            : base(connection, mappingCache)
        {
            OnCreated();
        }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="DBDataContext"/> class.
        /// </summary>
        /// <param name="connection">The database connection.</param>
        [DebuggerNonUserCodeAttribute]
        public DBDataContext(IDbConnection connection)
            : base(connection, mappingCache)
        {
            OnCreated();
        }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="DBDataContext"/> class.
        /// </summary>
        /// <param name="connection">The connection string.</param>
        /// <param name="mappingSource">The mapping source.</param>
        [DebuggerNonUserCodeAttribute]
        public DBDataContext(string connection, MappingSource mappingSource)
            : base(connection, mappingSource)
        {
            OnCreated();
        }
        
        /// <summary>
        /// Initializes a new instance of the <see cref="DBDataContext"/> class.
        /// </summary>
        /// <param name="connection">The database connection.</param>
        /// <param name="mappingSource">The mapping source.</param>
        [DebuggerNonUserCodeAttribute]
        public DBDataContext(IDbConnection connection, MappingSource mappingSource)
            : base(connection, mappingSource)
        {
            OnCreated();
        }
        #endregion
        
        #region Tables
        /// <summary>Represents the dbo.Account table in the underlying database.</summary>
        public Table<Account> Account
        {
            get { return GetTable<Account>(); }
        }
        
        /// <summary>Represents the dbo.Category table in the underlying database.</summary>
        public Table<Category> Category
        {
            get { return GetTable<Category>(); }
        }
        
        /// <summary>Represents the dbo.Publish table in the underlying database.</summary>
        public Table<Publish> Publish
        {
            get { return GetTable<Publish>(); }
        }
        
        /// <summary>Represents the dbo.Question table in the underlying database.</summary>
        public Table<Question> Question
        {
            get { return GetTable<Question>(); }
        }
        
        /// <summary>Represents the dbo.Reply table in the underlying database.</summary>
        public Table<Reply> Reply
        {
            get { return GetTable<Reply>(); }
        }
        
        #endregion

        #region Functions
        #endregion

        #region Extensibility Method Definitions
        /// <summary>Called after this instance is created.</summary>
        partial void OnCreated();
        /// <summary>Called before a Account is inserted.</summary>
        /// <param name="instance">The instance.</param>
        partial void InsertAccount(Account instance);
        /// <summary>Called before a Account is updated.</summary>
        /// <param name="instance">The instance.</param>
        partial void UpdateAccount(Account instance);
        /// <summary>Called before a Account is deleted.</summary>
        /// <param name="instance">The instance.</param>
        partial void DeleteAccount(Account instance);
        /// <summary>Called before a Category is inserted.</summary>
        /// <param name="instance">The instance.</param>
        partial void InsertCategory(Category instance);
        /// <summary>Called before a Category is updated.</summary>
        /// <param name="instance">The instance.</param>
        partial void UpdateCategory(Category instance);
        /// <summary>Called before a Category is deleted.</summary>
        /// <param name="instance">The instance.</param>
        partial void DeleteCategory(Category instance);
        /// <summary>Called before a Publish is inserted.</summary>
        /// <param name="instance">The instance.</param>
        partial void InsertPublish(Publish instance);
        /// <summary>Called before a Publish is updated.</summary>
        /// <param name="instance">The instance.</param>
        partial void UpdatePublish(Publish instance);
        /// <summary>Called before a Publish is deleted.</summary>
        /// <param name="instance">The instance.</param>
        partial void DeletePublish(Publish instance);
        /// <summary>Called before a Question is inserted.</summary>
        /// <param name="instance">The instance.</param>
        partial void InsertQuestion(Question instance);
        /// <summary>Called before a Question is updated.</summary>
        /// <param name="instance">The instance.</param>
        partial void UpdateQuestion(Question instance);
        /// <summary>Called before a Question is deleted.</summary>
        /// <param name="instance">The instance.</param>
        partial void DeleteQuestion(Question instance);
        /// <summary>Called before a Reply is inserted.</summary>
        /// <param name="instance">The instance.</param>
        partial void InsertReply(Reply instance);
        /// <summary>Called before a Reply is updated.</summary>
        /// <param name="instance">The instance.</param>
        partial void UpdateReply(Reply instance);
        /// <summary>Called before a Reply is deleted.</summary>
        /// <param name="instance">The instance.</param>
        partial void DeleteReply(Reply instance);
        #endregion
    }
}

