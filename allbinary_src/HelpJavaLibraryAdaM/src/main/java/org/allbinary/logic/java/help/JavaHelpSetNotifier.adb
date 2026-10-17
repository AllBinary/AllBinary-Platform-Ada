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


package body org.allbinary.logic.java.help.JavaHelpSetNotifier_Package is

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
            if (url.toString.compareTo (nextURL.toString)) = (0) then
                isNotified := True;
            end if;
        end loop;
        JavaHelpSetNotifier_Package.vector.add (url);
        return isNotified;
   end isNotified;

   procedure isNotified (helpSet_Param : access HelpSet_Package.HelpSet'Class) is
      Java_Result : constant Boolean := isNotified (helpSet_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNotified;

begin
   null;
   vector := BasicArrayListD_Package.Create;

end org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;


