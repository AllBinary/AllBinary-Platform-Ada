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


package body tags.transform.info.TransformInfoTag_Package is

   procedure Initialize_Fields (This : in out TransformInfoTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.name := Null_Unbounded_String;
      This.storeName := Null_Unbounded_String;
      This.objectFile := Null_Unbounded_String;
      This.anyType := Null_Unbounded_String;
      This.objectConfigFile := Null_Unbounded_String;
      This.objectConfig := Null_Unbounded_String;
      This.templateFile := Null_Unbounded_String;
      This.template := Null_Unbounded_String;
      This.dataFile := Null_Unbounded_String;
      This.data := Null_Unbounded_String;
      This.type_Id := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoTag'Class) is
   begin
        ModifyTag_Package.Initialize (This, TransformInfoRequestHelperFactory_Package.Create);
        Initialize_Fields (This);
   end Initialize;

   function Create return TransformInfoTag_Access is
      This : constant TransformInfoTag_Access := new TransformInfoTag;
   begin
      TransformInfoTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out TransformInfoTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface'Class) is
      tagHelperFactoryInterface : TagHelperFactoryInterface_Access := TagHelperFactoryInterface_Access (tagHelperFactoryInterface_Param);
   begin
        ModifyTag_Package.Initialize (This, tagHelperFactoryInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface'Class) return TransformInfoTag_Access is
      This : constant TransformInfoTag_Access := new TransformInfoTag;
   begin
      TransformInfoTag_Package.Initialize (This.all, tagHelperFactoryInterface_Param);
      return This;
   end Create;

   procedure setName (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.name := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.NAME, This.name);
   end setName;

   procedure setStoreName (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.storeName := value;
        This.getPropertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
   end setStoreName;

   procedure setObjectFile (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.objectFile := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.OBJECTFILENAME, This.objectFile);
   end setObjectFile;

   procedure setObject (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.anyType := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.OBJECT, This.anyType);
   end setObject;

   procedure setTemplateFile (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.templateFile := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.TEMPLATEFILENAME, This.templateFile);
   end setTemplateFile;

   procedure setTemplate (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.template := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.TEMPLATE, This.template);
   end setTemplate;

   procedure setDataFile (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.dataFile := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.DATAFILENAME, This.dataFile);
   end setDataFile;

   procedure setData (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.data := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.DATA, This.data);
   end setData;

   procedure setObjectConfigFile (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.objectConfigFile := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.OBJECTCONFIGFILENAME, This.objectConfigFile);
   end setObjectConfigFile;

   procedure setObjectConfig (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.objectConfig := value;
        This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.OBJECTCONFIG, This.objectConfig);
   end setObjectConfig;

   procedure setType (This : in out TransformInfoTag; value : Unbounded_String) is
   begin
        This.type_Id := value;
        This.getPropertiesHashMap.put (OutputTypeData_Package.getInstance.NAME, This.type_Id);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("TransformInfoTag type set: ") & This.type_Id, TransformInfoTag_Access'(This'Unchecked_Access), To_Unbounded_String ("setType"));
        end if;
   end setType;

   function getName (This : in out TransformInfoTag) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getObjectFile (This : in out TransformInfoTag) return Unbounded_String is
   begin
        return This.objectFile;
   end getObjectFile;

   --  throws JspTagException
   function doStartTag (This : in out TransformInfoTag) return Integer is
   begin
        begin
            return ModifyTag (This).doStartTag;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end tags.transform.info.TransformInfoTag_Package;


