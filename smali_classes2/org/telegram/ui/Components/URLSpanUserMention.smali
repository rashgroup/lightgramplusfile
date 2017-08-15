.class public Lorg/telegram/ui/Components/URLSpanUserMention;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "URLSpanUserMention.java"


# instance fields
.field private isOut:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanUserMention;->isOut:Z

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->updateDrawState(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanUserMention;->isOut:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chat_messageLinkOut"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "chat_messageLinkIn"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method
