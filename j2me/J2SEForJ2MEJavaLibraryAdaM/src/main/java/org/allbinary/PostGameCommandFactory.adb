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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package; use org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;

package body org.allbinary.PostGameCommandFactory_Package is

   package MultiPlayerGameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MultiPlayerGameFeatureFactory_Package;
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Canvas_Package_References."=";
   procedure Initialize_Fields (This : in out PostGameCommandFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PostGameCommandFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PostGameCommandFactory_Access is
      This : constant PostGameCommandFactory_Access := new PostGameCommandFactory;
   begin
      PostGameCommandFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PostGameCommandFactory_Access is
   begin
        return PostGameCommandFactory_Access (PostGameCommandFactory_Package.instance);
   end getInstance;

   procedure addCommands (This : in out PostGameCommandFactory; canvas_Param : access Canvas_Package.Canvas'Class) is
      canvas : constant Canvas_Access := Canvas_Access (canvas_Param);
   begin
        MultiPlayerGameFeatureFactory_Package.getInstance.addCommands (canvas);
   end addCommands;

begin
   null;
   instance := PostGameCommandFactory_Package.Create;

end org.allbinary.PostGameCommandFactory_Package;


