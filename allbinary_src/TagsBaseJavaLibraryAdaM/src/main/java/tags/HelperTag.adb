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



package body tags.HelperTag_Package is

   procedure Initialize_Fields (This : in out HelperTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.anyType := null;
   end Initialize_Fields;


   procedure Initialize (This : in out HelperTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) is
      tagHelperFactoryInterface : constant TagHelperFactoryInterface_Access := TagHelperFactoryInterface_Access (tagHelperFactoryInterface_Param);
   begin
      PropertiesTag_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, HelperTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.tagHelperFactoryInterface := tagHelperFactoryInterface;
   end Initialize;

   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return HelperTag_Access is
      This : constant HelperTag_Access := new HelperTag;
   begin
      HelperTag_Package.Initialize (This.all, tagHelperFactoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setHelper (This : in out HelperTag) is
   begin
        if (This.anyType) = (null) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("Creating TagHelper with: " & ASCII.LF & "") & HelperTag'Class (This).getPropertiesHashMap.toString, HelperTag_Access'(This'Unchecked_Access), To_Unbounded_String ("doStartTag"));
            end if;
            This.anyType := This.tagHelperFactoryInterface.getInstance (HelperTag'Class (This).getPropertiesHashMap, This.pageContext);
        end if;
   end setHelper;

   function getHelper (This : in out HelperTag) return Java_Object_Access is
   begin
        return This.anyType;
   end getHelper;

   function doEndTag (This : in out HelperTag) return Integer is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("Tag Ended"), HelperTag_Access'(This'Unchecked_Access), To_Unbounded_String ("doEndTag"));
        end if;
        This.anyType := null;
        return PropertiesTag (This).doEndTag;
   end doEndTag;

end tags.HelperTag_Package;


