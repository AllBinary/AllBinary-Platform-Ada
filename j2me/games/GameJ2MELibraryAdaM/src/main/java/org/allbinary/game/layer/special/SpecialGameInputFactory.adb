-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.game.layer.special.SpecialGameInput_Package; use org.allbinary.game.layer.special.SpecialGameInput_Package;
with org.allbinary.game.layer.special.SpecialGameInput_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package body org.allbinary.game.layer.special.SpecialGameInputFactory_Package is

   subtype SpecialGameInput_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access;
   function "=" (Left, Right : SpecialGameInput_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array;
   function "=" (Left, Right : SpecialGameInput_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access_Array is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   subtype SpecialGameInput_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.SpecialGameInput_Package_References.SpecialGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.SpecialGameInput_Package_References."=";
   procedure Initialize_Fields (This : in out SpecialGameInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialGameInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialGameInputFactory_Access is
      This : constant SpecialGameInputFactory_Access := new SpecialGameInputFactory;
   begin
      SpecialGameInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NO_SPECIAL_GAME_INPUT := SpecialGameInput_Package.Create;

end org.allbinary.game.layer.special.SpecialGameInputFactory_Package;


