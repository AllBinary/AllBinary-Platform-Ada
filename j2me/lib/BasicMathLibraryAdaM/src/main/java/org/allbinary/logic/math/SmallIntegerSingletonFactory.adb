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


package body org.allbinary.logic.math.SmallIntegerSingletonFactory_Package is

   procedure Initialize_Fields (This : in out SmallIntegerSingletonFactory'Class) is
   begin
      null;
      This.NEGATIVE_MAX := 500;
      This.POSITIVE_MAX := 16#2D1#;
      This.INTEGER_ARRAY := new Integer_Array'(0 .. ((This.NEGATIVE_MAX) + (This.POSITIVE_MAX)) - 1 => null);
      This.STRING_ARRAY := new Unbounded_String_Array'(0 .. ((This.NEGATIVE_MAX) + (This.POSITIVE_MAX)) - 1 => Null_Unbounded_String);
      This.MIN := 0;
      This.lastMin := 0;
      This.lastNegativeMin := 0;
   end Initialize_Fields;


   function getInstance return SmallIntegerSingletonFactory_Access is
   begin
        return SmallIntegerSingletonFactory_Package.instance;
   end getInstance;

   function getMin (This : in out SmallIntegerSingletonFactory) return Integer is
      minAllowed : Integer;
      logUtil : LogUtil_Access;
   begin
        minAllowed := This.getMinAllowed;
        if (This.MIN) <= (minAllowed) then
            if J2MEUtil_Package.isJ2ME then
                null;
            elsif AndroidUtil_Package.isAndroid then
                logUtil := LogUtil_Package.getInstance;
                logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Android InputFactory was initialized before GameMidlet: ")).appendint (This.MIN).toString, This'Unchecked_Access, To_Unbounded_String ("getMin"));
                This.initWithRange (16#291#, 6);
            else
                logUtil := LogUtil_Package.getInstance;
                logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ")).appendint (This.MIN).toString, This'Unchecked_Access, To_Unbounded_String ("getMin"));
                This.initWithRange (16#2D0#, 6);
            end if;
        end if;
        if (This.MIN) <= (minAllowed) then
            logUtil := LogUtil_Package.getInstance;
            logUtil.put (To_Unbounded_String ("This means you loaded the InputFactory before determining the platform input size requirements."), This'Unchecked_Access, To_Unbounded_String ("getMin"), Java_New_Exception ("Exception"));
        end if;
        return This.MIN;
   end getMin;

   function getMinAllowed (This : in out SmallIntegerSingletonFactory) return Integer is
   begin
        if J2MEUtil_Package.isJ2ME then
            return 0;
        else
            if AndroidUtil_Package.isAndroid then
                return 16#101#;
            else
                return 23;
            end if;
        end if;
   end getMinAllowed;

   procedure initWithRange (This : in out SmallIntegerSingletonFactory; value : Integer; negativeValue : Integer) is
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

   procedure init (This : in out SmallIntegerSingletonFactory) is
      index : Integer;
   begin
        if ((This.lastMin) < (This.POSITIVE_MAX)) or else ((This.lastNegativeMin) < (This.NEGATIVE_MAX)) then
            for index in reverse This.lastMin .. (This.POSITIVE_MAX) - (1) loop
                This.INTEGER_ARRAY ((index) + (This.NEGATIVE_MAX)) := index;
            end loop;
            for index in reverse This.lastNegativeMin .. (This.NEGATIVE_MAX) - (1) loop
                This.INTEGER_ARRAY (index) := -(index);
            end loop;
            This.lastMin := This.POSITIVE_MAX;
            This.MIN := This.lastMin;
            This.lastNegativeMin := This.NEGATIVE_MAX;
        end if;
   end init;

   procedure Initialize (This : in out SmallIntegerSingletonFactory'Class) is
   begin
      Initialize_Fields (This);
        This.initWithRange (23, 0);
   end Initialize;

   function Create return SmallIntegerSingletonFactory_Access is
      This : constant SmallIntegerSingletonFactory_Access := new SmallIntegerSingletonFactory;
   begin
      SmallIntegerSingletonFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getAt (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer is
   begin
        return This.INTEGER_ARRAY ((index) + (This.NEGATIVE_MAX));
   end getAt;

   function getAtNoThrow (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer is
   begin
        if ((index) + (This.NEGATIVE_MAX)) > ((This.INTEGER_ARRAY'Length) - (1)) then
            return This.INTEGER_ARRAY ((-(1)) + (This.NEGATIVE_MAX));
        end if;
        return This.INTEGER_ARRAY ((index) + (This.NEGATIVE_MAX));
   end getAtNoThrow;

   function createInstance (This : in out SmallIntegerSingletonFactory; index : Integer) return Integer is
      integer_Id : Integer;
   begin
        integer_Id := This.getAt (index);
        if (integer_Id) = (null) then
            integer_Id := index;
        end if;
        return integer_Id;
   end createInstance;

   function getString (This : in out SmallIntegerSingletonFactory; index : Integer) return Unbounded_String is
      i : Integer;
   begin
        i := (index) + (This.NEGATIVE_MAX);
        if (This.STRING_ARRAY (i)) = (null) then
            This.STRING_ARRAY (i) := This.INTEGER_ARRAY (i).toString;
        end if;
        return This.STRING_ARRAY (i);
   end getString;

   procedure getAt (This : in out SmallIntegerSingletonFactory; index : Integer) is
      Java_Result : constant Integer := SmallIntegerSingletonFactory'Class (This).getAt (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAt;

   procedure getAtNoThrow (This : in out SmallIntegerSingletonFactory; index : Integer) is
      Java_Result : constant Integer := SmallIntegerSingletonFactory'Class (This).getAtNoThrow (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAtNoThrow;

   procedure createInstance (This : in out SmallIntegerSingletonFactory; index : Integer) is
      Java_Result : constant Integer := SmallIntegerSingletonFactory'Class (This).createInstance (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

   procedure getString (This : in out SmallIntegerSingletonFactory; index : Integer) is
      Java_Result : constant Unbounded_String := SmallIntegerSingletonFactory'Class (This).getString (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

begin
   null;
   instance := SmallIntegerSingletonFactory_Package.Create;

end org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;


