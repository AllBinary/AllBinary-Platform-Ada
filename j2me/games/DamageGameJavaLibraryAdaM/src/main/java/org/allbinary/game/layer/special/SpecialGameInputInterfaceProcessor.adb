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


with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package body org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package is

   subtype SpecialGameInputInterface_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   subtype SpecialGameInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References.SpecialGameInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInputInterface_Package_References."=";
   procedure Initialize_Fields (This : in out SpecialGameInputInterfaceProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialGameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class) is
      collidableDestroyableDamageableLayer : constant SpecialGameInputInterface_Access := SpecialGameInputInterface_Access (collidableDestroyableDamageableLayer_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.specialGameInputInterface := collidableDestroyableDamageableLayer;
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class) return SpecialGameInputInterfaceProcessor_Access is
      This : constant SpecialGameInputInterfaceProcessor_Access := new SpecialGameInputInterfaceProcessor;
   begin
      SpecialGameInputInterfaceProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

end org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package;


