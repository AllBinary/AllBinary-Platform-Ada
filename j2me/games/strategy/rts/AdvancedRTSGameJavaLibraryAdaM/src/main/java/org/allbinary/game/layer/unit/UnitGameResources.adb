-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.unit.UnitGameResources_Package is

   procedure Initialize_Fields (This : in out UnitGameResources'Class) is
   begin
      null;
      This.NAME := StringUtil_Package.getInstance.EMPTY_STRING;
      This.RESOURCE_ICON_ANIMATION := StringUtil_Package.getInstance.EMPTY_STRING;
      This.RESOURCE_ICON_BUILD := StringUtil_Package.getInstance.EMPTY_STRING;
      This.RESOURCE_ICON := StringUtil_Package.getInstance.EMPTY_STRING;
      This.ICON_SIZE := To_Unbounded_String ("_64_by_64.png");
   end Initialize_Fields;


   procedure Initialize (This : in out UnitGameResources'Class) is
   begin
      BasicGameResources_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UnitGameResources_Access is
      This : constant UnitGameResources_Access := new UnitGameResources;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure append (This : in out UnitGameResources; ROOT : Unbounded_String; sizeString : Unbounded_String) is
      string_Id : Unbounded_String;
   begin
        BasicGameResources (This).append (ROOT, sizeString);
        string_Id := GameGraphicsResourceUtil_Package.getInstance.getName;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        BasicGameResources_Package.stringBuffer.append (UnitGameResources_Package.DESTROY);
        BasicGameResources_Package.stringBuffer.append (string_Id);
        BasicGameResources_Package.stringBuffer.append (sizeString);
        This.RESOURCE_DESTROY := BasicGameResources_Package.stringBuffer.toString;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (UnitGameResources_Package.ICON);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        This.RESOURCE_ICON_ANIMATION := BasicGameResources_Package.stringBuffer.toString;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        BasicGameResources_Package.stringBuffer.append (UnitGameResources_Package.ICON);
        BasicGameResources_Package.stringBuffer.append (string_Id);
        BasicGameResources_Package.stringBuffer.append (This.ICON_SIZE);
        This.RESOURCE_ICON := BasicGameResources_Package.stringBuffer.toString;
        BasicGameResources_Package.stringBuffer.delete (0, BasicGameResources_Package.stringBuffer.length);
        BasicGameResources_Package.stringBuffer.append (ROOT);
        BasicGameResources_Package.stringBuffer.append (UnitGameResources_Package.ICON_BUILD);
        BasicGameResources_Package.stringBuffer.append (string_Id);
        BasicGameResources_Package.stringBuffer.append (This.ICON_SIZE);
        This.RESOURCE_ICON_BUILD := BasicGameResources_Package.stringBuffer.toString;
   end append;

   --  throws Exception
   function getString (This : in out UnitGameResources) return Unbounded_String is
   begin
        if AndroidUtil_Package.isAndroid then
            return GameGraphicsResourceUtil_Package.getInstance.getStringForFeature (GraphicsFeatureFactory_Package.getInstance.SPRITE_QUARTER_ROTATION_GRAPHICS);
        else
            return BasicGameResources (This).getString;
        end if;
   end getString;

   procedure getString (This : in out UnitGameResources) is
      Java_Result : constant Unbounded_String := UnitGameResources'Class (This).getString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

begin
   null;
   ICON := To_Unbounded_String ("_icon");
   BUILD := To_Unbounded_String ("_build");
   DESTROY := To_Unbounded_String ("_destroy");
   ICON_BUILD := To_Unbounded_String ("_icon") & Java_Image (UnitGameResources_Package.BUILD);

end org.allbinary.game.layer.unit.UnitGameResources_Package;


