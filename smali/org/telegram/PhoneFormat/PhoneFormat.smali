.class public Lorg/telegram/PhoneFormat/PhoneFormat;
.super Ljava/lang/Object;
.source "PhoneFormat.java"


# static fields
.field private static volatile Instance:Lorg/telegram/PhoneFormat/PhoneFormat;


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public callingCodeCountries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public callingCodeData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/PhoneFormat/CallingCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public callingCodeOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public countryCallingCode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public data:[B

.field public defaultCallingCode:Ljava/lang/String;

.field public defaultCountry:Ljava/lang/String;

.field private initialzed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/PhoneFormat/PhoneFormat;->Instance:Lorg/telegram/PhoneFormat/PhoneFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->initialzed:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->initialzed:Z

    invoke-virtual {p0, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;
    .locals 2

    sget-object v0, Lorg/telegram/PhoneFormat/PhoneFormat;->Instance:Lorg/telegram/PhoneFormat/PhoneFormat;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/PhoneFormat/PhoneFormat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/PhoneFormat/PhoneFormat;->Instance:Lorg/telegram/PhoneFormat/PhoneFormat;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/PhoneFormat/PhoneFormat;

    invoke-direct {v0}, Lorg/telegram/PhoneFormat/PhoneFormat;-><init>()V

    sput-object v0, Lorg/telegram/PhoneFormat/PhoneFormat;->Instance:Lorg/telegram/PhoneFormat/PhoneFormat;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "0123456789+*#"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "0123456789"

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public callingCodeForCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->countryCallingCode:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public callingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeData:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/PhoneFormat/CallingCodeInfo;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeOffsets:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;

    invoke-direct {v4}, Lorg/telegram/PhoneFormat/CallingCodeInfo;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;->callingCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeCountries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;->countries:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeData:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v9

    add-int/lit8 v3, v8, 0x2

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v10

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v11

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->valueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v6

    goto :goto_0

    :cond_0
    iput-object v5, v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;->trunkPrefixes:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->valueString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v6

    goto :goto_1

    :cond_1
    iput-object v5, v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;->intlPrefixes:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    add-int v5, v8, v9

    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-ge v6, v11, :cond_6

    new-instance v13, Lorg/telegram/PhoneFormat/RuleSet;

    invoke-direct {v13}, Lorg/telegram/PhoneFormat/RuleSet;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v3

    iput v3, v13, Lorg/telegram/PhoneFormat/RuleSet;->matchLen:I

    add-int/lit8 v3, v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v14

    add-int/lit8 v5, v3, 0x2

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v14, :cond_5

    new-instance v16, Lorg/telegram/PhoneFormat/PhoneRule;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/PhoneFormat/PhoneRule;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->value32(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->minVal:I

    add-int/lit8 v5, v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->value32(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxVal:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v7, v5

    move-object/from16 v0, v16

    iput v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->byte8:I

    add-int/lit8 v5, v17, 0x1

    aget-byte v17, v7, v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->maxLen:I

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v7, v5

    move-object/from16 v0, v16

    iput v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->otherFlag:I

    add-int/lit8 v5, v17, 0x1

    aget-byte v17, v7, v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->prefixLen:I

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v7, v5

    move-object/from16 v0, v16

    iput v5, v0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    add-int/lit8 v5, v17, 0x1

    aget-byte v17, v7, v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->flag13:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->value16(I)S

    move-result v17

    add-int/lit8 v5, v5, 0x2

    add-int v18, v8, v9

    add-int v18, v18, v10

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->valueString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "[["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "]]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v19, "%s%s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v20, v21

    const/16 v17, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    move-object/from16 v21, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v20, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    :cond_2
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->hasIntlPrefix:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithIntlPrefix:Z

    :cond_3
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lorg/telegram/PhoneFormat/PhoneRule;->hasTrunkPrefix:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v13, Lorg/telegram/PhoneFormat/RuleSet;->hasRuleWithTrunkPrefix:Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_5
    iput-object v15, v13, Lorg/telegram/PhoneFormat/RuleSet;->rules:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_2

    :cond_6
    iput-object v12, v4, Lorg/telegram/PhoneFormat/CallingCodeInfo;->ruleSets:Ljava/util/ArrayList;

    move-object v3, v4

    :cond_7
    return-object v3
.end method

.method public countriesForCallingCode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeCountries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public defaultCallingCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeForCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->initialzed:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCallingCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->matchingAccessCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->format(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v5, 0xff

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "PhoneFormats.dat"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v3, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    return-void

    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iput-object p1, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCountry:Ljava/lang/String;

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeOffsets:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeCountries:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->countryCallingCode:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->parseDataHeader()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->initialzed:Z

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_7
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_9
    throw v0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_6
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCountry:Ljava/lang/String;

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public isPhoneNumberValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->initialzed:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCallingCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v3

    if-nez v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v2}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->matchingAccessCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->findCallingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v3, v2}, Lorg/telegram/PhoneFormat/CallingCodeInfo;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public parseDataHeader()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->value32(I)I

    move-result v3

    mul-int/lit8 v1, v3, 0xc

    add-int/lit8 v4, v1, 0x4

    const/4 v1, 0x4

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->valueString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->valueString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->value32(I)I

    move-result v2

    add-int v7, v2, v4

    add-int/lit8 v2, v0, 0x4

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v5, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCallingCode:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->countryCallingCode:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeOffsets:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeCountries:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeCountries:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCallingCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->defaultCallingCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/PhoneFormat/PhoneFormat;->callingCodeInfo(Ljava/lang/String;)Lorg/telegram/PhoneFormat/CallingCodeInfo;

    :cond_3
    return-void
.end method

.method value16(I)S
    .locals 2

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method value32(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public valueString(I)Ljava/lang/String;
    .locals 3

    move v1, p1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    aget-byte v0, v0, v1

    if-nez v0, :cond_1

    sub-int v0, v1, p1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/PhoneFormat/PhoneFormat;->data:[B

    sub-int/2addr v1, p1

    invoke-direct {v0, v2, p1, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
