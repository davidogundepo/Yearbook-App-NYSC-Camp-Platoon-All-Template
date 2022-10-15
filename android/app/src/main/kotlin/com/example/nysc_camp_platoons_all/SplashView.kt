package com.icdatinnovations.nysc_camp_platoons_all



import android.content.Context
import android.graphics.Color
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import io.flutter.embedding.android.SplashScreen

class SplashView : SplashScreen {

    private val nullParent: ViewGroup? = null

    override fun createSplashView(context: Context, savedInstanceState: Bundle?): View? {
        val rootView = FrameLayout(context)
        rootView.apply {
            layoutParams = FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

            setBackgroundColor(Color.parseColor("#A2D2FF"))
            addView(LayoutInflater.from(context).inflate(R.layout.splash_view, nullParent, false))

        }
        return rootView
    }


    override fun transitionToFlutter(onTransitionComplete: Runnable) {
        Handler(Looper.getMainLooper()).postDelayed(onTransitionComplete,4000)
    }
}