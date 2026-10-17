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


package body org.allbinary.logic.math.SmallLongFactory_Package is

   procedure Initialize_Fields (This : in out SmallLongFactory'Class) is
   begin
      null;
      This.NEGATIVE_MAX := 500;
      This.POSITIVE_MAX := 16#2D1#;
      This.INTEGER_ARRAY := new Long_Long_Integer_Array'(0 .. ((This.NEGATIVE_MAX) + (This.POSITIVE_MAX)) - 1 => null);
      This.STRING_ARRAY := new Unbounded_String_Array'(0 .. ((This.NEGATIVE_MAX) + (This.POSITIVE_MAX)) - 1 => Null_Unbounded_String);
      This.MIN := 0;
      This.lastMin := 0;
      This.lastNegativeMin := 0;
   end Initialize_Fields;


   function getInstance return SmallLongFactory_Access is
   begin
        return SmallLongFactory_Package.instance;
   end getInstance;

   procedure initWithRange (This : in out SmallLongFactory; value : Integer; negativeValue : Integer) is
      index : Integer;
   begin
        for index in reverse This.lastMin .. (value) - (1) loop
            This.INTEGER_ARRAY ((index) + (This.NEGATIVE_MAX)) := index;
        end loop;
        for index in reverse This.lastNegativeMin .. (negativeValue) - (1) loop
            This.INTEGER_ARRAY (index) := -(index);
        end loop;
        if (This.lastMin) < (value) then
            This.lastMin := value;
            This.MIN := value;
        end if;
        if (This.lastNegativeMin) < (negativeValue) then
            This.lastNegativeMin := negativeValue;
        end if;
   end initWithRange;

   procedure init (This : in out SmallLongFactory) is
      index : Integer;
   begin
        if (This.INTEGER_ARRAY (0)) = (null) then
            if ((This.lastMin) < (This.POSITIVE_MAX)) or else ((This.lastNegativeMin) < (This.NEGATIVE_MAX)) then
                for index in reverse This.lastMin .. (This.POSITIVE_MAX) - (1) loop
                    This.INTEGER_ARRAY ((index) + (This.NEGATIVE_MAX)) := index;
                end loop;
                for index in reverse This.lastNegativeMin .. (This.NEGATIVE_MAX) - (1) loop
                    This.INTEGER_ARRAY (index) := -(index);
                end loop;
                This.lastMin := This.POSITIVE_MAX;
                This.lastNegativeMin := This.NEGATIVE_MAX;
            end if;
        end if;
   end init;

   procedure Initialize (This : in out SmallLongFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SmallLongFactory_Access is
      This : constant SmallLongFactory_Access := new SmallLongFactory;
   begin
      SmallLongFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer) return Long_Long_Integer is
   begin
        if ((index) + (Long_Long_Integer (This.NEGATIVE_MAX))) > (Long_Long_Integer ((This.INTEGER_ARRAY'Length) - (1))) then
            return This.INTEGER_ARRAY ((-(1)) + (This.NEGATIVE_MAX));
        end if;
        return This.INTEGER_ARRAY (((Integer (index))) + (This.NEGATIVE_MAX));
   end getInstanceNoThrow;

   function getString (This : in out SmallLongFactory; index : Integer) return Unbounded_String is
      i : Integer;
   begin
        i := (index) + (This.NEGATIVE_MAX);
        if (This.STRING_ARRAY (i)) = (null) then
            This.STRING_ARRAY (i) := This.INTEGER_ARRAY (i).toString;
        end if;
        return This.STRING_ARRAY (i);
   end getString;

   procedure getInstanceNoThrow (This : in out SmallLongFactory; index : Long_Long_Integer) is
      Java_Result : constant Long_Long_Integer := SmallLongFactory'Class (This).getInstanceNoThrow (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceNoThrow;

   procedure getString (This : in out SmallLongFactory; index : Integer) is
      Java_Result : constant Unbounded_String := SmallLongFactory'Class (This).getString (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

begin
   null;
   instance := SmallLongFactory_Package.Create;

end org.allbinary.logic.math.SmallLongFactory_Package;


