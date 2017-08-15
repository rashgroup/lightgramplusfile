.class public Lorg/telegram/PhoneFormat/PhoneRule;
.super Ljava/lang/Object;
.source "PhoneRule.java"


# instance fields
.field public byte8:I

.field public flag12:I

.field public flag13:I

.field public format:Ljava/lang/String;

.field public hasIntlPrefix:Z

.field public hasTrunkPrefix:Z

.field public maxLen:I

.field public maxVal:I

.field public minVal:I

.field public otherFlag:I

.field public prefixLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x29

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    :goto_0
    iget-object v8, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_6

    iget-object v8, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_1
    const/16 v9, 0x20

    if-ne v8, v9, :cond_2

    if-lez v0, :cond_2

    iget-object v9, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    iget-object v9, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x63

    if-ne v9, v10, :cond_2

    if-eqz p2, :cond_4

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v2, v9, :cond_3

    if-eqz v3, :cond_4

    if-ne v8, v11, :cond_4

    :cond_3
    iget-object v9, p0, Lorg/telegram/PhoneFormat/PhoneRule;->format:Ljava/lang/String;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v11, :cond_4

    move v3, v1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_a

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_2

    :sswitch_1
    if-eqz p3, :cond_9

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_4

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    move v3, v6

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_8

    if-nez v5, :cond_8

    const-string/jumbo v0, "%s "

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz p3, :cond_7

    if-nez v4, :cond_7

    invoke-virtual {v7, v1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    move v4, v6

    goto :goto_2

    :cond_a
    move v5, v6

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_2
        0x28 -> :sswitch_3
        0x63 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method hasIntlPrefix()Z
    .locals 1

    iget v0, p0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasTrunkPrefix()Z
    .locals 1

    iget v0, p0, Lorg/telegram/PhoneFormat/PhoneRule;->flag12:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
