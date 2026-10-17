--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.business.quoterequest.QuoteRequestData_Package is

   procedure Initialize_Fields (This : in out QuoteRequestData'Class) is
   begin
      null;
      This.ID := To_Unbounded_String ("QUOTEREQUEST_ID");
      This.PROJECT_INFO := To_Unbounded_String ("QUOTEREQUEST_PROJECT_INFO");
      This.CUSTOMER_COMMENTS := To_Unbounded_String ("QUOTEREQUEST_CUSTOMER_COMMENTS");
      This.BUDGET := To_Unbounded_String ("QUOTEREQUEST_BUDGET");
      This.TIMEFRAME := To_Unbounded_String ("QUOTEREQUEST_TIMEFRAME");
      This.COMMENTS := To_Unbounded_String ("QUOTEREQUEST_COMMENTS");
   end Initialize_Fields;


   function getInstance return QuoteRequestData_Access is
   begin
        return QuoteRequestData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out QuoteRequestData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return QuoteRequestData_Access is
      This : constant QuoteRequestData_Access := new QuoteRequestData;
   begin
      QuoteRequestData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := QuoteRequestData_Package.Create;

end org.allbinary.business.quoterequest.QuoteRequestData_Package;


