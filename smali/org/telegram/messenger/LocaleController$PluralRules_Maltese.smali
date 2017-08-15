.class public Lorg/telegram/messenger/LocaleController$PluralRules_Maltese;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Maltese"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 3

    const/4 v0, 0x2

    rem-int/lit8 v1, p1, 0x64

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-lt v1, v0, :cond_2

    const/16 v0, 0xa

    if-gt v1, v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    if-lt v1, v0, :cond_3

    const/16 v0, 0x13

    if-gt v1, v0, :cond_3

    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
