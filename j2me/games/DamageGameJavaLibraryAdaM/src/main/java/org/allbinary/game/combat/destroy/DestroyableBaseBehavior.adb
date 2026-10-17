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


package body org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package is

   procedure Initialize_Fields (This : in out DestroyableBaseBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DestroyableBaseBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DestroyableBaseBehavior_Access is
      This : constant DestroyableBaseBehavior_Access := new DestroyableBaseBehavior;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return DestroyableBaseBehavior_Access is
   begin
        return DestroyableBaseBehavior_Package.instance;
   end getInstance;

   function getName (This : in out DestroyableBaseBehavior) return Unbounded_String is
   begin
        return To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag));
   end getName;

   --  throws Exception
   function isDestroyed (This : in out DestroyableBaseBehavior) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end isDestroyed;

   procedure setDestroyed (This : in out DestroyableBaseBehavior; destroyed : Boolean) is
   begin
        null;
   end setDestroyed;

   procedure getInstance is
      Java_Result : constant DestroyableBaseBehavior_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getName (This : in out DestroyableBaseBehavior) is
      Java_Result : constant Unbounded_String := DestroyableBaseBehavior'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure isDestroyed (This : in out DestroyableBaseBehavior) is
      Java_Result : constant Boolean := DestroyableBaseBehavior'Class (This).isDestroyed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDestroyed;

begin
   null;
   instance := DestroyableBaseBehavior_Package.Create;

end org.allbinary.game.combat.destroy.DestroyableBaseBehavior_Package;


