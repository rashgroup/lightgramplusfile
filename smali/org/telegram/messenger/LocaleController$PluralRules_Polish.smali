.class public Lorg/telegram/messenger/LocaleController$PluralRules_Polish;
.super Lorg/telegram/messenger/LocaleController$PluralRules;
.source "LocaleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/LocaleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluralRules_Polish"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/LocaleController$PluralRules;-><init>()V

    return-void
.end method


# virtual methods
.method public quantityForNumber(I)I
    .locals 4

    const/4 v0, 0x2

    rem-int/lit8 v1, p1, 0x64

    rem-int/lit8 v2, p1, 0xa

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    if-lt v2, v0, :cond_3

    const/4 v0, 0x4

    if-gt v2, v0, :cond_3

    const/16 v0, 0xc

    if-lt v1, v0, :cond_1

    const/16 v0, 0xe

    if-le v1, v0, :cond_3

    :cond_1
    const/16 v0, 0x16

    if-lt v1, v0, :cond_2

    const/16 v0, 0x18

    if-le v1, v0, :cond_3

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
