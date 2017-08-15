.class Lorg/telegram/messenger/AndroidUtilities$C02935;
.super Ljava/lang/Object;
.source "AndroidUtilities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/AndroidUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "C02935"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;
    }
.end annotation


# instance fields
.field final val$context:Landroid/app/Activity;

.field final val$pck:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/AndroidUtilities$C02935;->val$pck:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/AndroidUtilities$C02935;->val$context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/AndroidUtilities$C02935$C02921;-><init>(Lorg/telegram/messenger/AndroidUtilities$C02935;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
