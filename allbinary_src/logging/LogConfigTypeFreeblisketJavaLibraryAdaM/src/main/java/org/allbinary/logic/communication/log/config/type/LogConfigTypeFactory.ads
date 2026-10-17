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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type LogConfigTypeFactory is tagged;
   type LogConfigTypeFactory_Access is access all LogConfigTypeFactory'Class;
   type LogConfigTypeFactory_Access_Array is array (Natural range <>) of LogConfigTypeFactory_Access;
   type LogConfigTypeFactory_Access_Array_Access is access all LogConfigTypeFactory_Access_Array;

   type LogConfigTypeFactory is new Java_Object with record
      NO_DESCRIPTION : Unbounded_String;
      AUTHENTICATION : LogConfigType_Access;
      AUTHENTICATIONERROR : LogConfigType_Access;
      CATEGORY : LogConfigType_Access;
      CATEGORYERROR : LogConfigType_Access;
      CRYPT : LogConfigType_Access;
      CRYPTERROR : LogConfigType_Access;
      EMAILLOGGING : LogConfigType_Access;
      EMAILLOGGINGERROR : LogConfigType_Access;
      ENTITYFACTORYERROR : LogConfigType_Access;
      NETBEANS_MODULE : LogConfigType_Access;
      NETBEANS_MODULE_ERROR : LogConfigType_Access;
      FACTORYERROR : LogConfigType_Access;
      FILE : LogConfigType_Access;
      FILEERROR : LogConfigType_Access;
      HTTP : LogConfigType_Access;
      HTTPERROR : LogConfigType_Access;
      HTTPREQUEST : LogConfigType_Access;
      HTTPREQUESTERROR : LogConfigType_Access;
      IDLOGGING : LogConfigType_Access;
      JSPEXTRAOUTPUT : LogConfigType_Access;
      JSPTAGEXTRAOUTPUT : LogConfigType_Access;
      JSPTAG : LogConfigType_Access;
      JSPTAGERROR : LogConfigType_Access;
      LICENSING : LogConfigType_Access;
      LICENSINGERROR : LogConfigType_Access;
      LOADER : LogConfigType_Access;
      LOADERERROR : LogConfigType_Access;
      OS : LogConfigType_Access;
      OSERROR : LogConfigType_Access;
      PAYMENT : LogConfigType_Access;
      PAYMENTERROR : LogConfigType_Access;
      PRELOADER : LogConfigType_Access;
      PRELOADERERROR : LogConfigType_Access;
      PRODUCTSEARCHLOGGING : LogConfigType_Access;
      PRODUCTSEARCHLOGGINGERROR : LogConfigType_Access;
      SERVLET : LogConfigType_Access;
      SERVLETERROR : LogConfigType_Access;
      SHIPPINGERROR : LogConfigType_Access;
      SQLLOGGINGERROR : LogConfigType_Access;
      SQLLOGGING : LogConfigType_Access;
      SQLTAGS : LogConfigType_Access;
      SQLTAGSERROR : LogConfigType_Access;
      STYLE : LogConfigType_Access;
      STYLEERROR : LogConfigType_Access;
      TAGHELPER : LogConfigType_Access;
      TAGHELPERERROR : LogConfigType_Access;
      TAGHELPERFACTORY : LogConfigType_Access;
      TAGHELPERFACTORYERROR : LogConfigType_Access;
      TAX : LogConfigType_Access;
      TAXERROR : LogConfigType_Access;
      VALIDATION : LogConfigType_Access;
      VALIDATIONERROR : LogConfigType_Access;
      VIEW : LogConfigType_Access;
      VIEWERROR : LogConfigType_Access;
      VIEWFACTORYERROR : LogConfigType_Access;
      WORKFLOW : LogConfigType_Access;
      WORKFLOWERROR : LogConfigType_Access;
      XMLLOGGING : LogConfigType_Access;
      XMLLOGGINGERROR : LogConfigType_Access;
      XSLLOGGING : LogConfigType_Access;
      XSLLOGGINGERROR : LogConfigType_Access;
      REPLACE : LogConfigType_Access;
      REPLACE_INFO : LogConfigType_Access;
      REPLACEERROR : LogConfigType_Access;
      SQLLOGGINGPOOL : LogConfigType_Access;
      SQLLOGGINGPOOLERROR : LogConfigType_Access;
      STATICPAGEGENERATIONLOGGING : LogConfigType_Access;
      STATICPAGEGENERATIONLOGGINGERROR : LogConfigType_Access;
   end record;
   instance : LogConfigTypeFactory_Access;

   procedure Initialize (This : in out LogConfigTypeFactory'Class);
   function Create return LogConfigTypeFactory_Access;
   function getInstance return LogConfigTypeFactory_Access;
   procedure getInstance;

end org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;


