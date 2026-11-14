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


with java.net.URL_Package; use java.net.URL_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.math.MathUtil_Package;

package body org.allbinary.logic.java.help.JavaHelpSetNotifier_Package is

   package URL_Package renames Standard.java.net.URL_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   procedure Initialize_Fields (This : in out JavaHelpSetNotifier'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out JavaHelpSetNotifier'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return JavaHelpSetNotifier_Access is
      This : constant JavaHelpSetNotifier_Access := new JavaHelpSetNotifier;
   begin
      JavaHelpSetNotifier_Package.Initialize (This.all);
      return This;
   end Create;

   function get return BasicArrayList_Access is
   begin
        return JavaHelpSetNotifier_Package.vector;
   end get;

   function isNotified (helpSet_Param : access HelpSet_Package.HelpSet'Class) return Boolean is
      helpSet : constant HelpSet_Access := HelpSet_Access (helpSet_Param);
      isNotified : Boolean;
      url : URL_Access;
      size : Integer;
      urlArray : Java_Object_Access_Array_Access;
      nextURL : URL_Access;
      i : Integer;
   begin
        isNotified := False;
        url := helpSet.getHelpSetURL;
        size := JavaHelpSetNotifier_Package.vector.size;
        urlArray := JavaHelpSetNotifier_Package.vector.toArray;
        for i in 0 .. (size) - 1 loop
            nextURL := URL_Access (urlArray (i));
            if (Java_Compare_To (url.toString, nextURL.toString)) = (0) then
                isNotified := True;
            end if;
        end loop;
        JavaHelpSetNotifier_Package.vector.add (Java_Object_Access (url));
        return isNotified;
   end isNotified;

   procedure isNotified (helpSet_Param : access HelpSet_Package.HelpSet'Class) is
      Java_Result : constant Boolean := isNotified (helpSet_Param => helpSet_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNotified;

begin
   null;
   vector := BasicArrayList_Access (BasicArrayListD_Package.Create);

end org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;


