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


with org.allbinary.game.input.ScrollMapPlayerGameInput_Package; use org.allbinary.game.input.ScrollMapPlayerGameInput_Package;
with org.allbinary.game.input.ScrollMapPlayerGameInput_Package;

package body org.allbinary.game.input.ScrollMapGameInputProcessor_Package is

   subtype ScrollMapPlayerGameInput_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   subtype ScrollMapPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References.ScrollMapPlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapPlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.ScrollMapPlayerGameInput_Package_References."=";
   procedure Initialize_Fields (This : in out ScrollMapGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapGameInputProcessor'Class; scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) is
      scrollMapPlayerGameInput : constant ScrollMapPlayerGameInput_Access := ScrollMapPlayerGameInput_Access (scrollMapPlayerGameInput_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.scrollMapPlayerGameInput := scrollMapPlayerGameInput;
   end Initialize;

   function Create (scrollMapPlayerGameInput_Param : access ScrollMapPlayerGameInput_Package.ScrollMapPlayerGameInput'Class) return ScrollMapGameInputProcessor_Access is
      This : constant ScrollMapGameInputProcessor_Access := new ScrollMapGameInputProcessor;
   begin
      ScrollMapGameInputProcessor_Package.Initialize (This.all, scrollMapPlayerGameInput_Param);
      return This;
   end Create;

end org.allbinary.game.input.ScrollMapGameInputProcessor_Package;


