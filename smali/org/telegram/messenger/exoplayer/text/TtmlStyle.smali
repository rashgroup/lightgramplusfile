.class final Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private id:Ljava/lang/String;

.field private inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

.field private italic:I

.field private linethrough:I

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    return-void
.end method

.method private inherit(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontFamily:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    :cond_4
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_7

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSize:F

    iput v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSize:F

    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8

    iget v0, p1, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    :cond_8
    return-object p0
.end method


# virtual methods
.method public chain(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inherit(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->backgroundColor:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontColor()I
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontColor:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 4

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    :goto_1
    iget v3, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    if-eq v3, v2, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    :cond_1
    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor:Z

    return v0
.end method

.method public inherit(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inherit(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public isLinethrough()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderline()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 1

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->backgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor:Z

    return-object p0
.end method

.method public setBold(Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->bold:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public setFontColor(I)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontColor:I

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor:Z

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSize(F)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSize:F

    return-object p0
.end method

.method public setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->fontSizeUnit:I

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setItalic(Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->italic:I

    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setLinethrough(Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->linethrough:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setUnderline(Z)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->inheritableStyle:Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->underline:I

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method
