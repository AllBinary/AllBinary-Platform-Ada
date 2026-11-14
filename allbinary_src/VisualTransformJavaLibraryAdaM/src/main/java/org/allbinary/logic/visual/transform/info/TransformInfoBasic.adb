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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package is

   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   function "=" (Left, Right : StoreFrontInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References."=";
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   function "=" (Left, Right : AbPath_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbPath_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.path.AbPath_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References.TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoObjectConfigInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype WeblisketSessionInterface_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   subtype WeblisketSessionInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References.WeblisketSessionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeblisketSessionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package_References."=";
   procedure Initialize_Fields (This : in out TransformInfoBasic'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoBasic'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        AbContext_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        This.storeFrontInterface := storeFrontInterface;
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoBasic_Access is
      This : constant TransformInfoBasic_Access := new TransformInfoBasic;
   begin
      TransformInfoBasic_Package.Initialize (This.all, storeFrontInterface_Param, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   function getStoreName (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return This.storeFrontInterface.getName;
   end getStoreName;

   function log (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return This.commonStrings.NOT_IMPLEMENTED;
   end log;

   procedure override (This : in out TransformInfoBasic; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        null;
   end override;

   function getName (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getName;

   function getObjectFile (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getObjectFile;

   function getObject (This : in out TransformInfoBasic) return Java_Object_Access is
   begin
        return null;
   end getObject;

   function getObjectConfigInterface (This : in out TransformInfoBasic) return TransformInfoObjectConfigInterface_Access is
   begin
        return null;
   end getObjectConfigInterface;

   procedure setObjectConfigInterface (This : in out TransformInfoBasic; transformInfoObjectConfigInterface_Param : access TransformInfoObjectConfigInterface_Package.TransformInfoObjectConfigInterface'Class) is
      transformInfoObjectConfigInterface : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigInterface_Access (transformInfoObjectConfigInterface_Param);
   begin
        null;
   end setObjectConfigInterface;

   function getTemplateFilePath (This : in out TransformInfoBasic) return AbPath_Access is
   begin
        return null;
   end getTemplateFilePath;

   function getTemplateFile (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getTemplateFile;

   function getTemplate (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getTemplate;

   function getDataFilePath (This : in out TransformInfoBasic) return AbPath_Access is
   begin
        return null;
   end getDataFilePath;

   function getDataFile (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getDataFile;

   --  throws Exception
   function getDataDocument (This : in out TransformInfoBasic) return Document_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getDataDocument;

   procedure setName (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setName;

   procedure setStoreName (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setStoreName;

   procedure setObjectFile (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setObjectFile;

   procedure setObject (This : in out TransformInfoBasic; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        null;
   end setObject;

   procedure setObjectConfigFile (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setObjectConfigFile;

   procedure setTemplateFile (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setTemplateFile;

   procedure setTemplate (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setTemplate;

   procedure setDataFile (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setDataFile;

   procedure setData (This : in out TransformInfoBasic; value : Unbounded_String) is
   begin
        null;
   end setData;

   procedure setChild (This : in out TransformInfoBasic) is
   begin
        null;
   end setChild;

   function isChild (This : in out TransformInfoBasic) return Boolean is
   begin
        return True;
   end isChild;

   function getImportUriPath (This : in out TransformInfoBasic) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getImportUriPath;

   procedure setImportUriPath (This : in out TransformInfoBasic; importUriPath : Unbounded_String) is
   begin
        null;
   end setImportUriPath;

   --  throws Exception
   function getKey (This : in out TransformInfoBasic) return Java_Object_Access is
   begin
        return null;
   end getKey;

   --  throws Exception
   function toVector (This : in out TransformInfoBasic) return BasicArrayList_Access is
   begin
        return null;
   end toVector;

   --  throws Exception
   function toHashMap (This : in out TransformInfoBasic) return HashMap_Access is
   begin
        return null;
   end toHashMap;

   function getWeblisketSession (This : in out TransformInfoBasic) return WeblisketSessionInterface_Access is
   begin
        return WeblisketSessionInterface_Access (AbContext_Package.AbContext (This).getWeblisketSession);
   end getWeblisketSession;

   function getPageContext (This : in out TransformInfoBasic) return PageContext_Access is
   begin
        return AbContext_Package.AbContext (This).getPageContext;
   end getPageContext;

   function getPropertiesHashMap (This : in out TransformInfoBasic) return HashMap_Access is
   begin
        return AbContext_Package.AbContext (This).getPropertiesHashMap;
   end getPropertiesHashMap;

   procedure setObject (This : in out TransformInfoBasic; Value : Unbounded_String) is
   begin
      TransformInfoBasic'Class (This).setObject (Java_Box (Value));
   end setObject;

end org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package;


