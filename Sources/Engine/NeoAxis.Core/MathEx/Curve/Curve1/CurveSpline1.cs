// Copyright (C) NeoAxis Group Ltd. 8 Copthall, Roseau Valley, 00152 Commonwealth of Dominica.
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace NeoAxis
{
	/// <summary>
	/// Base class of spline curves.
	/// </summary>
	public class CurveSpline1 : Curve1
	{
		public CurveSpline1( int initialCapacity = 4 )
			: base( initialCapacity )
		{
		}

		protected double GetValueForIndex( int index )
		{
			int n = points.Count - 1;

			if( index < 0 )
				return points[ 0 ].value + index * ( points[ 1 ].value - points[ 0 ].value );
			else if( index > n )
				return points[ n ].value + ( index - n ) * ( points[ n ].value - points[ n - 1 ].value );
			return points[ index ].value;
		}

		protected double GetTimeForIndex( int index )
		{
			int n = points.Count - 1;

			if( index < 0 )
				return points[ 0 ].time + index * ( points[ 1 ].time - points[ 0 ].time );
			else if( index > n )
				return points[ n ].time + ( index - n ) * ( points[ n ].time - points[ n - 1 ].time );
			return points[ index ].time;
		}

		protected double GetClampedTime( double t )
		{
			return t;
		}
	}
}
