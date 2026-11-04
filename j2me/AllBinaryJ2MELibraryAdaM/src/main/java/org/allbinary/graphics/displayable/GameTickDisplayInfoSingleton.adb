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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;

package body org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package is

   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   procedure Initialize_Fields (This : in out GameTickDisplayInfoSingleton'Class) is
   begin
      null;
      This.displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
      This.lastWidth := This.displayInfoSingleton.getLastWidth;
      This.lastHeight := This.displayInfoSingleton.getLastHeight;
      This.lastHalfWidth := This.displayInfoSingleton.getLastHalfWidth;
      This.lastHalfHeight := This.displayInfoSingleton.getLastHalfHeight;
   end Initialize_Fields;

   procedure Initialize (This : in out GameTickDisplayInfoSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameTickDisplayInfoSingleton_Access is
      This : constant GameTickDisplayInfoSingleton_Access := new GameTickDisplayInfoSingleton;
   begin
      GameTickDisplayInfoSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameTickDisplayInfoSingleton_Access is
   begin
        return GameTickDisplayInfoSingleton_Access (GameTickDisplayInfoSingleton_Package.instance);
   end getInstance;

   procedure update (This : in out GameTickDisplayInfoSingleton) is
   begin
        This.lastWidth := This.displayInfoSingleton.getLastWidth;
        This.lastHeight := This.displayInfoSingleton.getLastHeight;
        This.lastHalfWidth := This.displayInfoSingleton.getLastHalfWidth;
        This.lastHalfHeight := This.displayInfoSingleton.getLastHalfHeight;
   end update;

   function getLastWidth (This : in out GameTickDisplayInfoSingleton) return Integer is
   begin
        return This.lastWidth;
   end getLastWidth;

   function getLastHeight (This : in out GameTickDisplayInfoSingleton) return Integer is
   begin
        return This.lastHeight;
   end getLastHeight;

   function getLastHalfWidth (This : in out GameTickDisplayInfoSingleton) return Integer is
   begin
        return This.lastHalfWidth;
   end getLastHalfWidth;

   function getLastHalfHeight (This : in out GameTickDisplayInfoSingleton) return Integer is
   begin
        return This.lastHalfHeight;
   end getLastHalfHeight;

begin
   null;
   instance := GameTickDisplayInfoSingleton_Package.Create;

end org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;


