.class public Lcom/googlecode/mp4parser/util/Iso639;
.super Ljava/lang/Object;
.source "Iso639.java"


# static fields
.field static threeToTwo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static twoToThree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/util/Iso639;->twoToThree:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/util/Iso639;->threeToTwo:Ljava/util/Map;

    const-string/jumbo v0, "ab"

    const-string/jumbo v1, "abk"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "aa"

    const-string/jumbo v1, "aar"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "af"

    const-string/jumbo v1, "afr"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ak"

    const-string/jumbo v1, "aka"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sq"

    const-string/jumbo v1, "sqi"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "am"

    const-string/jumbo v1, "amh"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ar"

    const-string/jumbo v1, "ara"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "an"

    const-string/jumbo v1, "arg"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hy"

    const-string/jumbo v1, "hye"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "as"

    const-string/jumbo v1, "asm"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "av"

    const-string/jumbo v1, "ava"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ae"

    const-string/jumbo v1, "ave"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ay"

    const-string/jumbo v1, "aym"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "az"

    const-string/jumbo v1, "aze"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bm"

    const-string/jumbo v1, "bam"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ba"

    const-string/jumbo v1, "bak"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "eu"

    const-string/jumbo v1, "eus"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "be"

    const-string/jumbo v1, "bel"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bn"

    const-string/jumbo v1, "ben"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bh"

    const-string/jumbo v1, "bih"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bi"

    const-string/jumbo v1, "bis"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bs"

    const-string/jumbo v1, "bos"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "br"

    const-string/jumbo v1, "bre"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bg"

    const-string/jumbo v1, "bul"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "my"

    const-string/jumbo v1, "mya"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ca"

    const-string/jumbo v1, "cat"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ch"

    const-string/jumbo v1, "cha"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ce"

    const-string/jumbo v1, "che"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ny"

    const-string/jumbo v1, "nya"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "zho"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cv"

    const-string/jumbo v1, "chv"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kw"

    const-string/jumbo v1, "cor"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "co"

    const-string/jumbo v1, "cos"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cr"

    const-string/jumbo v1, "cre"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hr"

    const-string/jumbo v1, "hrv"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cs"

    const-string/jumbo v1, "ces"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "da"

    const-string/jumbo v1, "dan"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dv"

    const-string/jumbo v1, "div"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nl"

    const-string/jumbo v1, "nld"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dz"

    const-string/jumbo v1, "dzo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "en"

    const-string/jumbo v1, "eng"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "eo"

    const-string/jumbo v1, "epo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "et"

    const-string/jumbo v1, "est"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ee"

    const-string/jumbo v1, "ewe"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fo"

    const-string/jumbo v1, "fao"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fj"

    const-string/jumbo v1, "fij"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fi"

    const-string/jumbo v1, "fin"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fr"

    const-string/jumbo v1, "fra"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ff"

    const-string/jumbo v1, "ful"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gl"

    const-string/jumbo v1, "glg"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ka"

    const-string/jumbo v1, "kat"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "de"

    const-string/jumbo v1, "deu"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "el"

    const-string/jumbo v1, "ell"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gn"

    const-string/jumbo v1, "grn"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gu"

    const-string/jumbo v1, "guj"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ht"

    const-string/jumbo v1, "hat"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ha"

    const-string/jumbo v1, "hau"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "he"

    const-string/jumbo v1, "heb"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hz"

    const-string/jumbo v1, "her"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hi"

    const-string/jumbo v1, "hin"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ho"

    const-string/jumbo v1, "hmo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hu"

    const-string/jumbo v1, "hun"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ia"

    const-string/jumbo v1, "ina"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "id"

    const-string/jumbo v1, "ind"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ie"

    const-string/jumbo v1, "ile"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ga"

    const-string/jumbo v1, "gle"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ig"

    const-string/jumbo v1, "ibo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ik"

    const-string/jumbo v1, "ipk"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "io"

    const-string/jumbo v1, "ido"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "is"

    const-string/jumbo v1, "isl"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "it"

    const-string/jumbo v1, "ita"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "iu"

    const-string/jumbo v1, "iku"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ja"

    const-string/jumbo v1, "jpn"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "jv"

    const-string/jumbo v1, "jav"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kl"

    const-string/jumbo v1, "kal"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kn"

    const-string/jumbo v1, "kan"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kr"

    const-string/jumbo v1, "kau"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ks"

    const-string/jumbo v1, "kas"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kk"

    const-string/jumbo v1, "kaz"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "km"

    const-string/jumbo v1, "khm"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ki"

    const-string/jumbo v1, "kik"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rw"

    const-string/jumbo v1, "kin"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ky"

    const-string/jumbo v1, "kir"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kv"

    const-string/jumbo v1, "kom"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kg"

    const-string/jumbo v1, "kon"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ko"

    const-string/jumbo v1, "kor"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ku"

    const-string/jumbo v1, "kur"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "kj"

    const-string/jumbo v1, "kua"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "la"

    const-string/jumbo v1, "lat"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lb"

    const-string/jumbo v1, "ltz"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lg"

    const-string/jumbo v1, "lug"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "li"

    const-string/jumbo v1, "lim"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ln"

    const-string/jumbo v1, "lin"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lo"

    const-string/jumbo v1, "lao"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lt"

    const-string/jumbo v1, "lit"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lu"

    const-string/jumbo v1, "lub"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "lv"

    const-string/jumbo v1, "lav"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gv"

    const-string/jumbo v1, "glv"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mk"

    const-string/jumbo v1, "mkd"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mg"

    const-string/jumbo v1, "mlg"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ms"

    const-string/jumbo v1, "msa"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ml"

    const-string/jumbo v1, "mal"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mt"

    const-string/jumbo v1, "mlt"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mi"

    const-string/jumbo v1, "mri"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mr"

    const-string/jumbo v1, "mar"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mh"

    const-string/jumbo v1, "mah"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mn"

    const-string/jumbo v1, "mon"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "na"

    const-string/jumbo v1, "nau"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nv"

    const-string/jumbo v1, "nav"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nd"

    const-string/jumbo v1, "nde"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ne"

    const-string/jumbo v1, "nep"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ng"

    const-string/jumbo v1, "ndo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nb"

    const-string/jumbo v1, "nob"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nn"

    const-string/jumbo v1, "nno"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "no"

    const-string/jumbo v1, "nor"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ii"

    const-string/jumbo v1, "iii"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "nr"

    const-string/jumbo v1, "nbl"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oc"

    const-string/jumbo v1, "oci"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oj"

    const-string/jumbo v1, "oji"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cu"

    const-string/jumbo v1, "chu"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "om"

    const-string/jumbo v1, "orm"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "or"

    const-string/jumbo v1, "ori"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "os"

    const-string/jumbo v1, "oss"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pa"

    const-string/jumbo v1, "pan"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pi"

    const-string/jumbo v1, "pli"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fa"

    const-string/jumbo v1, "fas"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pl"

    const-string/jumbo v1, "pol"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ps"

    const-string/jumbo v1, "pus"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pt"

    const-string/jumbo v1, "por"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "qu"

    const-string/jumbo v1, "que"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rm"

    const-string/jumbo v1, "roh"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rn"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ro"

    const-string/jumbo v1, "ron"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ru"

    const-string/jumbo v1, "rus"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sa"

    const-string/jumbo v1, "san"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sc"

    const-string/jumbo v1, "srd"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sd"

    const-string/jumbo v1, "snd"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "se"

    const-string/jumbo v1, "sme"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sm"

    const-string/jumbo v1, "smo"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sg"

    const-string/jumbo v1, "sag"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sr"

    const-string/jumbo v1, "srp"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gd"

    const-string/jumbo v1, "gla"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sn"

    const-string/jumbo v1, "sna"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "si"

    const-string/jumbo v1, "sin"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sk"

    const-string/jumbo v1, "slk"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sl"

    const-string/jumbo v1, "slv"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "so"

    const-string/jumbo v1, "som"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "st"

    const-string/jumbo v1, "sot"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "es"

    const-string/jumbo v1, "spa"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "su"

    const-string/jumbo v1, "sun"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sw"

    const-string/jumbo v1, "swa"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ss"

    const-string/jumbo v1, "ssw"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sv"

    const-string/jumbo v1, "swe"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ta"

    const-string/jumbo v1, "tam"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "te"

    const-string/jumbo v1, "tel"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tg"

    const-string/jumbo v1, "tgk"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "th"

    const-string/jumbo v1, "tha"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ti"

    const-string/jumbo v1, "tir"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "bo"

    const-string/jumbo v1, "bod"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tk"

    const-string/jumbo v1, "tuk"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tl"

    const-string/jumbo v1, "tgl"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tn"

    const-string/jumbo v1, "tsn"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "to"

    const-string/jumbo v1, "ton"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tr"

    const-string/jumbo v1, "tur"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ts"

    const-string/jumbo v1, "tso"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tt"

    const-string/jumbo v1, "tat"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tw"

    const-string/jumbo v1, "twi"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ty"

    const-string/jumbo v1, "tah"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ug"

    const-string/jumbo v1, "uig"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uk"

    const-string/jumbo v1, "ukr"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ur"

    const-string/jumbo v1, "urd"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uz"

    const-string/jumbo v1, "uzb"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ve"

    const-string/jumbo v1, "ven"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "vi"

    const-string/jumbo v1, "vie"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "vo"

    const-string/jumbo v1, "vol"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wa"

    const-string/jumbo v1, "wln"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cy"

    const-string/jumbo v1, "cym"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wo"

    const-string/jumbo v1, "wol"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fy"

    const-string/jumbo v1, "fry"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "xh"

    const-string/jumbo v1, "xho"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "yi"

    const-string/jumbo v1, "yid"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "yo"

    const-string/jumbo v1, "yor"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "za"

    const-string/jumbo v1, "zha"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "zu"

    const-string/jumbo v1, "zul"

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/Iso639;->doublePut(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2to3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/util/Iso639;->twoToThree:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static convert3to2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/util/Iso639;->threeToTwo:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static doublePut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/util/Iso639;->twoToThree:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/googlecode/mp4parser/util/Iso639;->threeToTwo:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
