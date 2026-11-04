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

limited with org.allbinary.graphics.color.ColorCacheFactory_Package;
package org.allbinary.graphics.color.ColorCacheFactory_Package_References is
   type ColorCacheFactory_Access is access all org.allbinary.graphics.color.ColorCacheFactory_Package.ColorCacheFactory'Class;
   type ColorCacheFactory_Access_Array is array (Natural range <>) of ColorCacheFactory_Access;
   type ColorCacheFactory_Access_Array_Access is access all ColorCacheFactory_Access_Array;
   type ColorCacheFactory_Access_Array_Access_Array is array (Natural range <>) of ColorCacheFactory_Access_Array_Access;
   type ColorCacheFactory_Access_Array_Access_Array_Access is access all ColorCacheFactory_Access_Array_Access_Array;
end org.allbinary.graphics.color.ColorCacheFactory_Package_References;

with org.allbinary.graphics.color.ColorCacheFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References;

package org.allbinary.graphics.color.ColorCacheFactory_Package is

   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package Reference_Types is
   subtype AutomaticCacheInterface_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access;
   use type AutomaticCacheInterface_Access;
   subtype AutomaticCacheInterface_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array;
   use type AutomaticCacheInterface_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access;
   subtype AutomaticCacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array;
   use type AutomaticCacheInterface_Access_Array_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorCacheFactory_Access is org.allbinary.graphics.color.ColorCacheFactory_Package_References.ColorCacheFactory_Access;
   function "=" (Left, Right : ColorCacheFactory_Access) return Boolean renames org.allbinary.graphics.color.ColorCacheFactory_Package_References."=";
   subtype ColorCacheFactory_Access_Array is org.allbinary.graphics.color.ColorCacheFactory_Package_References.ColorCacheFactory_Access_Array;
   function "=" (Left, Right : ColorCacheFactory_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorCacheFactory_Package_References."=";
   subtype ColorCacheFactory_Access_Array_Access is org.allbinary.graphics.color.ColorCacheFactory_Package_References.ColorCacheFactory_Access_Array_Access;
   function "=" (Left, Right : ColorCacheFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorCacheFactory_Package_References."=";
   subtype ColorCacheFactory_Access_Array_Access_Array is org.allbinary.graphics.color.ColorCacheFactory_Package_References.ColorCacheFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ColorCacheFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorCacheFactory_Package_References."=";
   subtype ColorCacheFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorCacheFactory_Package_References.ColorCacheFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorCacheFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorCacheFactory_Package_References."=";

   type ColorCacheFactory is new Java_Object with null record;
   cacheInterface : AutomaticCacheInterface_Access;

   procedure Initialize (This : in out ColorCacheFactory'Class);
   function Create return ColorCacheFactory_Access;
   function getInstance return AutomaticCacheInterface_Access;

end org.allbinary.graphics.color.ColorCacheFactory_Package;


