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


package body org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package is

   procedure Initialize_Fields (This : in out TransformInfoBasic'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoBasic'Class; storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        AbContext_Package.Initialize (This, propertiesHashMap, pageContext);
        Initialize_Fields (This);
        This.storeFrontInterface := storeFrontInterface;
   end Initialize;

   function Create (storeFrontInterface : StoreFrontInterface_Access; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return TransformInfoBasic_Access is
      This : constant TransformInfoBasic_Access := new TransformInfoBasic;
   begin
      TransformInfoBasic_Package.Initialize (This.all, storeFrontInterface, propertiesHashMap, pageContext);
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

   procedure override (This : in out TransformInfoBasic; hashMap : HashMap_Access) is
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

   procedure setObjectConfigInterface (This : in out TransformInfoBasic; transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface_Access) is
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

   procedure setObject (This : in out TransformInfoBasic; anyType : Java_Object_Access) is
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

end org.allbinary.logic.visual.transform.info.TransformInfoBasic_Package;


