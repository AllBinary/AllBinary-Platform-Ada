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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package body tags.PropertiesTag_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out PropertiesTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PropertiesTag'Class) is
   begin
      CommandTag_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, PropertiesTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize;

   function Create return PropertiesTag_Access is
      This : constant PropertiesTag_Access := new PropertiesTag;
   begin
      PropertiesTag_Package.Initialize (This.all);
      return This;
   end Create;

   function getPropertiesHashMap (This : in out PropertiesTag) return HashMap_Access is
   begin
        return This.propertiesHashMap;
   end getPropertiesHashMap;

   function doEndTag (This : in out PropertiesTag) return Integer is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("Tag Ended"), PropertiesTag_Access'(This'Unchecked_Access), To_Unbounded_String ("doEndTag"));
        end if;
        This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
        return EVAL_PAGE;
   end doEndTag;

end tags.PropertiesTag_Package;


