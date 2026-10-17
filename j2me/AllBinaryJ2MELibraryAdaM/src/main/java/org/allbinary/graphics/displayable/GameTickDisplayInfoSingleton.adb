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


package body org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameTickDisplayInfoSingleton_Access is
   begin
        return GameTickDisplayInfoSingleton_Package.instance;
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

   procedure getInstance is
      Java_Result : constant GameTickDisplayInfoSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getLastWidth (This : in out GameTickDisplayInfoSingleton) is
      Java_Result : constant Integer := GameTickDisplayInfoSingleton'Class (This).getLastWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastWidth;

   procedure getLastHeight (This : in out GameTickDisplayInfoSingleton) is
      Java_Result : constant Integer := GameTickDisplayInfoSingleton'Class (This).getLastHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHeight;

   procedure getLastHalfWidth (This : in out GameTickDisplayInfoSingleton) is
      Java_Result : constant Integer := GameTickDisplayInfoSingleton'Class (This).getLastHalfWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHalfWidth;

   procedure getLastHalfHeight (This : in out GameTickDisplayInfoSingleton) is
      Java_Result : constant Integer := GameTickDisplayInfoSingleton'Class (This).getLastHalfHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLastHalfHeight;

begin
   null;
   instance := GameTickDisplayInfoSingleton_Package.Create;

end org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton_Package;


