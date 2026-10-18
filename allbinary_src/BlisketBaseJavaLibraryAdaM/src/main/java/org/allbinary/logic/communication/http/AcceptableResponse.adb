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


with org.allbinary.logic.communication.http.AcceptableResponseUtil_Package; use org.allbinary.logic.communication.http.AcceptableResponseUtil_Package;

package body org.allbinary.logic.communication.http.AcceptableResponse_Package is

   procedure Initialize_Fields (This : in out AcceptableResponse'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AcceptableResponse'Class; candidate : Unbounded_String; tagName : Unbounded_String; index : Integer) is
      acceptableResponseUtil : AcceptableResponseUtil_Access;
   begin
      Initialize_Fields (This);
        This.logUtil.putF (tagName, AcceptableResponse_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        acceptableResponseUtil := AcceptableResponseUtil_Package.getInstance;
        acceptableResponseUtil.candidateVector.addAt (index, candidate);
        acceptableResponseUtil.tagNameVector.addAt (index, tagName);
   end Initialize;

   function Create (candidate : Unbounded_String; tagName : Unbounded_String; index : Integer) return AcceptableResponse_Access is
      This : constant AcceptableResponse_Access := new AcceptableResponse;
   begin
      AcceptableResponse_Package.Initialize (This.all, candidate, tagName, index);
      return This;
   end Create;

end org.allbinary.logic.communication.http.AcceptableResponse_Package;


