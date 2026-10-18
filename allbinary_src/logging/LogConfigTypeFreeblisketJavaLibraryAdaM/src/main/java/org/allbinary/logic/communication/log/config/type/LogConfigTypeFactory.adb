-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out LogConfigTypeFactory'Class) is
   begin
      null;
      This.NO_DESCRIPTION := To_Unbounded_String ("No Description");
      This.AUTHENTICATION := LogConfigType_Package.Create (To_Unbounded_String ("Authentication"), This.NO_DESCRIPTION);
      This.AUTHENTICATIONERROR := LogConfigType_Package.Create (To_Unbounded_String ("Authentication Error"), This.NO_DESCRIPTION);
      This.CATEGORY := LogConfigType_Package.Create (To_Unbounded_String ("Category"), This.NO_DESCRIPTION);
      This.CATEGORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("Category Error"), This.NO_DESCRIPTION);
      This.CRYPT := LogConfigType_Package.Create (To_Unbounded_String ("Crypt"), This.NO_DESCRIPTION);
      This.CRYPTERROR := LogConfigType_Package.Create (To_Unbounded_String ("Crypt Error"), This.NO_DESCRIPTION);
      This.EMAILLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("Email"), This.NO_DESCRIPTION);
      This.EMAILLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("Email Error"), This.NO_DESCRIPTION);
      This.ENTITYFACTORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("Entity Factory Error"), This.NO_DESCRIPTION);
      This.NETBEANS_MODULE := LogConfigType_Package.Create (To_Unbounded_String ("NetBeans Module"), This.NO_DESCRIPTION);
      This.NETBEANS_MODULE_ERROR := LogConfigType_Package.Create (To_Unbounded_String ("NetBeans Module Error"), This.NO_DESCRIPTION);
      This.FACTORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("General Factory Error"), This.NO_DESCRIPTION);
      This.FILE := LogConfigType_Package.Create (To_Unbounded_String ("File"), This.NO_DESCRIPTION);
      This.FILEERROR := LogConfigType_Package.Create (To_Unbounded_String ("File Error"), This.NO_DESCRIPTION);
      This.HTTP := LogConfigType_Package.Create (To_Unbounded_String ("HTTP"), This.NO_DESCRIPTION);
      This.HTTPERROR := LogConfigType_Package.Create (To_Unbounded_String ("HTTP Error"), This.NO_DESCRIPTION);
      This.HTTPREQUEST := LogConfigType_Package.Create (To_Unbounded_String ("Http Request"), This.NO_DESCRIPTION);
      This.HTTPREQUESTERROR := LogConfigType_Package.Create (To_Unbounded_String ("Http Request Error"), This.NO_DESCRIPTION);
      This.IDLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("ID Logging"), This.NO_DESCRIPTION);
      This.JSPEXTRAOUTPUT := LogConfigType_Package.Create (To_Unbounded_String ("JSP Extra Output"), This.NO_DESCRIPTION);
      This.JSPTAGEXTRAOUTPUT := LogConfigType_Package.Create (To_Unbounded_String ("JSP Tag Extra Output"), This.NO_DESCRIPTION);
      This.JSPTAG := LogConfigType_Package.Create (To_Unbounded_String ("JSP Tag"), This.NO_DESCRIPTION);
      This.JSPTAGERROR := LogConfigType_Package.Create (To_Unbounded_String ("JSP Tag Error"), This.NO_DESCRIPTION);
      This.LICENSING := LogConfigType_Package.Create (To_Unbounded_String ("Licensing"), This.NO_DESCRIPTION);
      This.LICENSINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("Licensing Error"), This.NO_DESCRIPTION);
      This.LOADER := LogConfigType_Package.Create (To_Unbounded_String ("Loader"), This.NO_DESCRIPTION);
      This.LOADERERROR := LogConfigType_Package.Create (To_Unbounded_String ("Loader Error"), This.NO_DESCRIPTION);
      This.OS := LogConfigType_Package.Create (To_Unbounded_String ("OS"), This.NO_DESCRIPTION);
      This.OSERROR := LogConfigType_Package.Create (To_Unbounded_String ("OS Error"), This.NO_DESCRIPTION);
      This.PAYMENT := LogConfigType_Package.Create (To_Unbounded_String ("Payment"), This.NO_DESCRIPTION);
      This.PAYMENTERROR := LogConfigType_Package.Create (To_Unbounded_String ("Payment Error"), This.NO_DESCRIPTION);
      This.PRELOADER := LogConfigType_Package.Create (To_Unbounded_String ("PreLoader"), This.NO_DESCRIPTION);
      This.PRELOADERERROR := LogConfigType_Package.Create (To_Unbounded_String ("PreLoader Error"), This.NO_DESCRIPTION);
      This.PRODUCTSEARCHLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("Product Search Logging"), This.NO_DESCRIPTION);
      This.PRODUCTSEARCHLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("Product Search Logging Error"), This.NO_DESCRIPTION);
      This.SERVLET := LogConfigType_Package.Create (To_Unbounded_String ("Servlet"), This.NO_DESCRIPTION);
      This.SERVLETERROR := LogConfigType_Package.Create (To_Unbounded_String ("Servlet Error"), This.NO_DESCRIPTION);
      This.SHIPPINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("Shipping Error"), This.NO_DESCRIPTION);
      This.SQLLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("SQL Error"), This.NO_DESCRIPTION);
      This.SQLLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("SQL Logging"), This.NO_DESCRIPTION);
      This.SQLTAGS := LogConfigType_Package.Create (To_Unbounded_String ("SQL Tag Logging"), This.NO_DESCRIPTION);
      This.SQLTAGSERROR := LogConfigType_Package.Create (To_Unbounded_String ("SQL Tag Error"), This.NO_DESCRIPTION);
      This.STYLE := LogConfigType_Package.Create (To_Unbounded_String ("Style"), This.NO_DESCRIPTION);
      This.STYLEERROR := LogConfigType_Package.Create (To_Unbounded_String ("Style Error"), This.NO_DESCRIPTION);
      This.TAGHELPER := LogConfigType_Package.Create (To_Unbounded_String ("Tag Helper"), This.NO_DESCRIPTION);
      This.TAGHELPERERROR := LogConfigType_Package.Create (To_Unbounded_String ("Tag Helper Error"), This.NO_DESCRIPTION);
      This.TAGHELPERFACTORY := LogConfigType_Package.Create (To_Unbounded_String ("Tag Helper Factory"), This.NO_DESCRIPTION);
      This.TAGHELPERFACTORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("Tag Helper Factory Error"), This.NO_DESCRIPTION);
      This.TAX := LogConfigType_Package.Create (To_Unbounded_String ("Tax"), This.NO_DESCRIPTION);
      This.TAXERROR := LogConfigType_Package.Create (To_Unbounded_String ("Tax Error"), This.NO_DESCRIPTION);
      This.VALIDATION := LogConfigType_Package.Create (To_Unbounded_String ("Validation"), This.NO_DESCRIPTION);
      This.VALIDATIONERROR := LogConfigType_Package.Create (To_Unbounded_String ("Validation Error"), This.NO_DESCRIPTION);
      This.VIEW := LogConfigType_Package.Create (To_Unbounded_String ("View"), This.NO_DESCRIPTION);
      This.VIEWERROR := LogConfigType_Package.Create (To_Unbounded_String ("View Error"), This.NO_DESCRIPTION);
      This.VIEWFACTORYERROR := LogConfigType_Package.Create (To_Unbounded_String ("View Factory Error"), This.NO_DESCRIPTION);
      This.WORKFLOW := LogConfigType_Package.Create (To_Unbounded_String ("Workflow"), This.NO_DESCRIPTION);
      This.WORKFLOWERROR := LogConfigType_Package.Create (To_Unbounded_String ("Workflow Error"), This.NO_DESCRIPTION);
      This.XMLLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("XML Logging"), This.NO_DESCRIPTION);
      This.XMLLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("XML Logging Error"), This.NO_DESCRIPTION);
      This.XSLLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("XSL Logging"), This.NO_DESCRIPTION);
      This.XSLLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("XSL Logging Error"), This.NO_DESCRIPTION);
      This.REPLACE := LogConfigType_Package.Create (To_Unbounded_String ("Replace"), This.NO_DESCRIPTION);
      This.REPLACE_INFO := LogConfigType_Package.Create (To_Unbounded_String ("Replace Info"), This.NO_DESCRIPTION);
      This.REPLACEERROR := LogConfigType_Package.Create (To_Unbounded_String ("Replace Error"), This.NO_DESCRIPTION);
      This.SQLLOGGINGPOOL := LogConfigType_Package.Create (To_Unbounded_String ("SQL Pool"), This.NO_DESCRIPTION);
      This.SQLLOGGINGPOOLERROR := LogConfigType_Package.Create (To_Unbounded_String ("SQL Pool Error"), This.NO_DESCRIPTION);
      This.STATICPAGEGENERATIONLOGGING := LogConfigType_Package.Create (To_Unbounded_String ("Static Page Generation Logging"), This.NO_DESCRIPTION);
      This.STATICPAGEGENERATIONLOGGINGERROR := LogConfigType_Package.Create (To_Unbounded_String ("Static Page Generation Logging Error"), This.NO_DESCRIPTION);
   end Initialize_Fields;


   function getInstance return LogConfigTypeFactory_Access is
   begin
        return LogConfigTypeFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out LogConfigTypeFactory'Class) is
   begin
      Initialize_Fields (This);
        PreLogUtil_Package.put (To_Unbounded_String ("FreeBlisket"), LogConfigTypeFactory_Access'(This'Unchecked_Access), CommonStrings_Package.getInstance.CONSTRUCTOR);
   end Initialize;

   function Create return LogConfigTypeFactory_Access is
      This : constant LogConfigTypeFactory_Access := new LogConfigTypeFactory;
   begin
      LogConfigTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := LogConfigTypeFactory_Package.Create;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


