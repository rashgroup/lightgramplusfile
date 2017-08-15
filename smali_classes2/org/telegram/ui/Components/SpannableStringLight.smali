.class public Lorg/telegram/ui/Components/SpannableStringLight;
.super Landroid/text/SpannableString;
.source "SpannableStringLight.java"


# static fields
.field private static fieldsAvailable:Z

.field private static mSpanCountField:Ljava/lang/reflect/Field;

.field private static mSpanDataField:Ljava/lang/reflect/Field;

.field private static mSpansField:Ljava/lang/reflect/Field;


# instance fields
.field private mSpanCountOverride:I

.field private mSpanDataOverride:[I

.field private mSpansOverride:[Ljava/lang/Object;

.field private num:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isFieldsAvailable()Z
    .locals 3

    const/4 v0, 0x1

    sget-boolean v1, Lorg/telegram/ui/Components/SpannableStringLight;->fieldsAvailable:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    :try_start_0
    const-class v1, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mSpans"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mSpanData"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mSpanCount"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v0, Lorg/telegram/ui/Components/SpannableStringLight;->fieldsAvailable:Z

    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public removeSpan(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpanLight(Ljava/lang/Object;III)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p3, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p4, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    return-void
.end method

.method public setSpansCount(I)V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    add-int/2addr v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    iput v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    iput v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    :try_start_0
    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
