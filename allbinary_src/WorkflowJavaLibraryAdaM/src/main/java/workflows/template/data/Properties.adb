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


package body workflows.template.data.Properties_Package is

   procedure Initialize_Fields (This : in out Properties'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Properties'Class) is
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("Start/Tag"), Properties_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
   end Initialize;

   function Create return Properties_Access is
      This : constant Properties_Access := new Properties;
   begin
      Properties_Package.Initialize (This.all);
      return This;
   end Create;

   function getPropertiesHashMap (This : in out Properties) return HashMap_Access is
   begin
        return This.propertiesHashMap;
   end getPropertiesHashMap;

   function doEndTag (This : in out Properties) return Integer is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (To_Unbounded_String ("Tag Ended"), Properties_Access'(This'Unchecked_Access), To_Unbounded_String ("doEndTag"));
        end if;
        This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
        return TagSupport_Package.EVAL_PAGE;
   end doEndTag;

end workflows.template.data.Properties_Package;


