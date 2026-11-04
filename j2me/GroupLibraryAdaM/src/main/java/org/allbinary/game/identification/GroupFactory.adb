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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupInterface_Package;

package body org.allbinary.game.identification.GroupFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   function "=" (Left, Right : Group_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   function "=" (Left, Right : Group_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   function "=" (Left, Right : Group_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Group_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.Group_Package_References."=";
   procedure Initialize_Fields (This : in out GroupFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NULL_GROUP_ARRAY := new Group_Access_Array'(0 .. (0) - 1 => null);
      This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.index := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out GroupFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GroupFactory_Access is
      This : constant GroupFactory_Access := new GroupFactory;
   begin
      GroupFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GroupFactory_Access is
   begin
        return GroupFactory_Access (GroupFactory_Package.instance);
   end getInstance;

   function getNextGroup (This : in out GroupFactory) return Group_Access is
      group : Group_Access;
   begin
        group := Group_Access (This.list.objectArray (This.index));
        This.index := This.index + 1;
        return group;
   end getNextGroup;

   function getNextGroupByName (This : in out GroupFactory; name : Unbounded_String) return Group_Access is
      group : Group_Access;
   begin
        group := GroupFactory'Class (This).getNextGroup;
        group.setName (name);
        return group;
   end getNextGroupByName;

   procedure init (This : in out GroupFactory; groups : Short_Integer; nameArray : Unbounded_String_Array_Access) is
      stringMaker : StringMaker_Access;
      stringUtil : StringUtil_Access;
      TEAM : Unbounded_String;
      size : Integer;
      name : Unbounded_String;
   begin
        stringMaker := StringMaker_Package.Create;
        stringUtil := StringUtil_Package.getInstance;
        TEAM := To_Unbounded_String ("Team ");
        This.list.clear;
        This.index := 0;
        size := This.list.size;
        name := Null_Unbounded_String;
        while (size) < (Integer (groups)) loop
            name := stringUtil.EMPTY_STRING;
            if (size) < (nameArray'Length) then
                name := nameArray (size);
            else
                stringMaker.delete (0, stringMaker.length);
                name := stringMaker.append (TEAM).appendint (size).toString;
            end if;
            This.list.add (Java_Object_Access (Group_Package.Create (name, Short_Integer (((size) + (3))))));
            size := size + 1;
        end loop;
   end init;

   procedure getNextGroupByName (This : in out GroupFactory; name : Unbounded_String) is
      Java_Result : constant Group_Access := GroupFactory'Class (This).getNextGroupByName (name => name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNextGroupByName;

begin
   null;
   instance := GroupFactory_Package.Create;

end org.allbinary.game.identification.GroupFactory_Package;


