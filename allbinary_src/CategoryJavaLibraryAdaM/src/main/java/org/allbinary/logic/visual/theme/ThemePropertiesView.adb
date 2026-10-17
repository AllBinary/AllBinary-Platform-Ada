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


package body org.allbinary.logic.visual.theme.ThemePropertiesView_Package is

   procedure Initialize_Fields (This : in out ThemePropertiesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ThemePropertiesView'Class; themeInterface : ThemeInterface_Access) is
   begin
      Initialize_Fields (This);
        This.themeInterface := themeInterface;
   end Initialize;

   function Create (themeInterface : ThemeInterface_Access) return ThemePropertiesView_Access is
      This : constant ThemePropertiesView_Access := new ThemePropertiesView;
   begin
      ThemePropertiesView_Package.Initialize (This.all, themeInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out ThemePropertiesView; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, ThemeData_Package.getInstance.NAME, This.themeInterface.toHashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out ThemePropertiesView; document : Document_Access) is
      Java_Result : constant Node_Access := ThemePropertiesView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemePropertiesView_Package;


