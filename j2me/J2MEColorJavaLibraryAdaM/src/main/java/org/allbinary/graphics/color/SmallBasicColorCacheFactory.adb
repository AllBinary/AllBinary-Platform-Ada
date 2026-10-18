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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;

package body org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out SmallBasicColorCacheFactory'Class) is
   begin
      null;
      This.SIZE := 255;
      This.INDEX_TO_COLOR := new Integer_Array'(0 .. (This.SIZE) - 1 => 0);
      This.BASIC_COLOR_ARRAY := new BasicColor_Access_Array'(0 .. (This.SIZE) - 1 => null);
      This.colorIndex := 0;
   end Initialize_Fields;


   function getInstance return SmallBasicColorCacheFactory_Access is
   begin
        return SmallBasicColorCacheFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SmallBasicColorCacheFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SmallBasicColorCacheFactory_Access is
      This : constant SmallBasicColorCacheFactory_Access := new SmallBasicColorCacheFactory;
   begin
      SmallBasicColorCacheFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out SmallBasicColorCacheFactory; basicDefaultColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicDefaultColor : constant BasicColor_Access := BasicColor_Access (basicDefaultColor_Param);
   begin
        This.BASIC_COLOR_ARRAY (This.colorIndex) := basicDefaultColor;
        This.INDEX_TO_COLOR (This.colorIndex) := basicDefaultColor.intValue;
        This.colorIndex := This.colorIndex + 1;
   end add;

   function getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer) return BasicColor_Access is
      basicColor : BasicColor_Access;
      index : Integer;
      ALPHA_MASK : Integer;
   begin
        basicColor := null;
        for index in 0 .. (This.SIZE) - 1 loop
            if (This.INDEX_TO_COLOR (index)) = (colorAsInt) then
                return This.BASIC_COLOR_ARRAY (index);
            end if;
        end loop;
        ALPHA_MASK := 16#FF000000#;
        basicColor := BasicColorFactory_Package.getInstance.createInstanceAN (Java_And (colorAsInt, ALPHA_MASK), Java_And (colorAsInt, 16#00FFFFFF#), StringUtil_Package.getInstance.EMPTY_STRING);
        SmallBasicColorCacheFactory'Class (This).add (basicColor);
        return basicColor;
   end getAndOrCreate;

   procedure getAndOrCreate (This : in out SmallBasicColorCacheFactory; colorAsInt : Integer) is
      Java_Result : constant BasicColor_Access := SmallBasicColorCacheFactory'Class (This).getAndOrCreate (colorAsInt => colorAsInt);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAndOrCreate;

begin
   null;
   instance := SmallBasicColorCacheFactory_Package.Create;

end org.allbinary.graphics.color.SmallBasicColorCacheFactory_Package;


