--  Generated Code Do Not Modify


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.communication.sql.SqlTypeStrings_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out SqlTypeStrings'Class) is
   begin
      null;
      This.CHAR_COLUMN := To_Unbounded_String ("VARCHAR");
      This.INT_COLUMN := To_Unbounded_String ("VARCHAR");
      This.MAX_SIZE := To_Unbounded_String ("(255)");
      This.SIXTY_SIZE := To_Unbounded_String ("(60)");
      This.NOT_NULL := To_Unbounded_String ("NOT NULL");
      This.ONE_SIZE := To_Unbounded_String ("(1)");
      This.TWO_SIZE := To_Unbounded_String ("(2)");
      This.THREE_SIZE := To_Unbounded_String ("(3)");
      This.SIX_SIZE := To_Unbounded_String ("(6)");
      This.ELEVEN_SIZE := To_Unbounded_String ("(11)");
      This.TWELVE_SIZE := To_Unbounded_String ("(12)");
      This.ONE_KB_CHAR_COLUMN := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (To_Unbounded_String ("(1024)")).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.MAX_CHAR_COLUMN := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.MAX_SIZE).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.MAX_CHAR_COLUMN_NOT_NULL := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.MAX_SIZE).append (CommonSeps_Package.getInstance.SPACE).append (This.NOT_NULL).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.SIXTY_CHAR_COLUMN_NOT_NULL := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.SIXTY_SIZE).append (This.NOT_NULL).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.ONE_CHAR_COLUMN_NOT_NULL := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.ONE_SIZE).append (This.NOT_NULL).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.SIX_CHAR_COLUMN_NOT_NULL := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.SIX_SIZE).append (This.NOT_NULL).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.TWELVE_CHAR_COLUMN_NOT_NULL := StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).append (This.CHAR_COLUMN).append (This.TWELVE_SIZE).append (This.NOT_NULL).append (CommonSeps_Package.getInstance.COMMA_SEP).toString;
      This.TWO_INT_NOT_NULL := To_Unbounded_String (" INT(2) NOT NULL, ");
      This.THREE_INT_NOT_NULL := To_Unbounded_String (" INT(3) NOT NULL, ");
      This.FOUR_INT_NOT_NULL := To_Unbounded_String (" INT(4) NOT NULL, ");
      This.MAX_INT_NOT_NULL := To_Unbounded_String (" INT(11) NOT NULL, ");
      This.MAX_INT_UNSIGNED := To_Unbounded_String (" INT(11) UNSIGNED, ");
      This.MAX_INT_UNSIGNED_NOT_NULL := To_Unbounded_String (" INT(11) UNSIGNED NOT NULL, ");
      This.MAX_BIG_INT_NOT_NULL := To_Unbounded_String (" BIGINT(19) NOT NULL, ");
      This.MAX_BIG_INT_UNSIGNED := To_Unbounded_String (" BIGINT(19) UNSIGNED, ");
      This.MAX_BIG_INT_UNSIGNED_NOT_NULL := To_Unbounded_String (" BIGINT(19) UNSIGNED NOT NULL, ");
      This.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL := To_Unbounded_String (" BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,");
      This.LONG_BLOB := To_Unbounded_String (" LONGBLOB, ");
      This.BLOB := To_Unbounded_String (" BLOB, ");
      This.BLOB_NOT_NULL := To_Unbounded_String (" BLOB NOT NULL, ");
   end Initialize_Fields;

   procedure Initialize (This : in out SqlTypeStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SqlTypeStrings_Access is
      This : constant SqlTypeStrings_Access := new SqlTypeStrings;
   begin
      SqlTypeStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return SqlTypeStrings_Access is
   begin
        return SqlTypeStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := SqlTypeStrings_Package.Create;

end org.allbinary.logic.communication.sql.SqlTypeStrings_Package;


