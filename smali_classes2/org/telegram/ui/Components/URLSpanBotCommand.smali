.class public Lorg/telegram/ui/Components/URLSpanBotCommand;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "URLSpanBotCommand.java"


# static fields
.field public static enabled:Z


# instance fields
.field public isOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->updateDrawState(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chat_messageLinkOut"

    :goto_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "chat_messageTextOut"

    goto :goto_0

    :cond_1
    sget-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "chat_messageLinkIn"

    :goto_2
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "chat_messageTextIn"

    goto :goto_2
.end method
